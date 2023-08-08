from drf_spectacular.utils import extend_schema
from django_filters import rest_framework as dj_filters
from . import serializers
from . import filters
from ..models import *
from coreapp.helper import *
from django.http import FileResponse
from django.shortcuts import get_object_or_404
from rest_framework.response import Response
from coreapp.permissions import DocumentDownloadPermission
from coreapp.models import User
from utility.utils import file_convert_utils

class DocumentAPI(ModelViewSet):
    permission_classes = [DjangoModelPermissions]  # Use the custom permission
    queryset = Document.objects.all()
    serializer_class = serializers.DocumentSerializer
    filter_backends = [DjangoFilterBackend, filters.SearchFilter]
    search_fields = ["title", "description"]
    filterset_fields = ["owner", "shared_with"]
    def get_queryset(self):
        if self.request.user.is_superuser:
            return super().get_queryset()
        return super().get_queryset().filter(owner=self.request.user)

    def check_download_perm(self, request, document):
        if (
            document.owner == request.user
            or request.user.is_superuser
            or request.user in document.shared_with.all()
        ):
            return True
        return False

    def get_serializer_context(self):
        context = super().get_serializer_context()
        context["request"] = self.request
        return context

    @action(detail=True, methods=["get"])
    def download(self, request, pk=None):
        document = get_object_or_404(Document, id=pk)
        status = self.check_download_perm(request, document)
        if not status:
            return JsonResponse(
                {"message": "You do not have permission to download this document."},
                status=403,
            )
        file_path = document.document.path
        response = FileResponse(open(file_path, "rb"))
        response[
            "Content-Disposition"
        ] = f'attachment; filename="{document.document.name}"'
        return response

    @extend_schema(request=serializers.DocumentShareSerializer)
    @action(detail=True, methods=["post"])
    def share(self, request, pk=None):
        document = get_object_or_404(Document, id=pk)
        users = request.data.get("users")
        share = request.data.get("share")
        for user_id in users:
            user = get_object_or_404(User, id=user_id)
            if share:
                document.shared_with.add(user)
            else:
                document.shared_with.remove(user)
        document.save()
        return JsonResponse({"message": "Document share updated successfully."}, status=200)
    @extend_schema(request=serializers.DocumentConvertSerializer)
    @action(detail=True, methods=["post"])
    def convert(self,request,pk=None):
        '''
        convert_format: \n
        0: docx to pdf \n
        1: pdf to docx
        '''
        data = ["pdf","docx"]
        convert_format = int(request.data.get("convert_format"))
        document = get_object_or_404(Document, id=pk)
        status = self.check_download_perm(request, document)
        if not status:
            return Response(
                {"message": "You do not have permission to perform  this action."},
                status=403,
            )
        file_path = document.document.path
        doc_type = file_path.split('.')[-1]
        converted_file_path = f"{file_path.split('.')[0]}{get_random_string(10)}.{data[convert_format]}"
        if data[convert_format]!=doc_type:
            if data[convert_format]=='pdf' and doc_type in ['docx','doc']:
                file_convert_utils.convert_docx_to_pdf(file_path, converted_file_path)

            elif data[convert_format] in ['docx','doc'] and doc_type=='pdf':
                file_convert_utils.convert_pdf_to_docx(file_path, converted_file_path)

            else:
                return Response(
                    {"message": "Currently we support only pdf to docx and docx to pdf conversion"},
                    status=403,
                )

        return FileResponse(open(converted_file_path, "rb"))


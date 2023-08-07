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

class DocumentAPI(ModelViewSet):
    permission_classes = [DjangoModelPermissions]  # Use the custom permission
    queryset = Document.objects.all()
    serializer_class = serializers.DocumentSerializer
    filter_backends = [DjangoFilterBackend, filters.SearchFilter]    
    search_fields = ['title', 'description']

    def check_download_perm(self, request, document):
        if document.owner == request.user:
            return True
        if request.user in document.shared_with.all():
            return True
        return False
    
    def get_serializer_context(self):
        context = super().get_serializer_context()
        context['request'] = self.request
        return context
    
    @action(detail=True, methods=['get'])
    def download(self, request, pk=None):
        document = get_object_or_404(Document, id=pk)
        status =  self.check_download_perm(request, document)
        if not status:
            return JsonResponse({'message': 'You do not have permission to download this document.'}, status=403)
        file_path = document.document.path
        response = FileResponse(open(file_path, 'rb'))
        response['Content-Disposition'] = f'attachment; filename="{document.document.name}"'
        return response
    
    @extend_schema(request=serializers.DocumentShareSerializer)
    @action(detail=True, methods=['post'])
    def share(self, request, pk=None):
        document = get_object_or_404(Document, id=pk)
        users = request.data.get('users')
        for user_id in users:
            user = get_object_or_404(User, id=user_id)
            document.shared_with.add(user)
        document.save()
        return JsonResponse({'message': 'Document shared successfully.'}, status=200)
    
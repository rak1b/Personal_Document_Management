
from . import serializers
from ...models import *
from coreapp.models import User
from coreapp.helper import *
from django.contrib.auth.models import Group, Permission
from coreapp.models import Role
class GroupAPI(ModelViewSet):
    permission_classes = [IsAuthenticated,DjangoModelPermissions]
    queryset = Group.objects.all()
    serializer_class = serializers.GroupSerializer
    filter_backends = [filters.SearchFilter]
    search_fields = ['name']
    http_method_names = ['get','post','delete']

    def get_serializer_context(self):
        context = super().get_serializer_context()
        context.update({"request": self.request})
        return context
    
    def get_serializer_class(self):
        if self.action == 'create':
            return serializers.GroupSerializerCustom
        return serializers.GroupSerializer
    
    @extend_schema(request=serializers.GroupSerializerCustom)
    def create(self, request, *args, **kwargs):
        '''
        Demo Format for POST:\n
        {"Full Document Control":{"Document":["view","change","add","delete"],"Role":["view","change","add","delete"]}}
        '''
        return super().list(request, *args, **kwargs)
class PermissionAPI(ModelViewSet):
    permission_classes = [IsAuthenticated,DjangoModelPermissions]
    queryset = Permission.objects.all()
    serializer_class = serializers.PermissionSerializer
    filter_backends = [filters.SearchFilter]
    search_fields = ['name']
    http_method_names = ['get']

class RoleAPI(ModelViewSet):
    permission_classes = [IsAuthenticated,DjangoModelPermissions]
    queryset = Role.objects.all()
    serializer_class = serializers.RoleSerializer
    filter_backends = [filters.SearchFilter]
    search_fields = ['name']


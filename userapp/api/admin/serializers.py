from rest_framework import serializers

from ...models import *
from django.contrib.auth.models import Group, Permission
from coreapp.models import Role

class PermissionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Permission
        fields = ['id','name']
class GroupSerializer(serializers.ModelSerializer):
    permissions = PermissionSerializer(many=True)
    class Meta:
        model = Group
        fields = '__all__'
class GroupSerializerCustom(serializers.Serializer):
    
    def create(self, validated_data):
        GROUPS = self.context.get("request").data
        print("GROUPS",GROUPS)
        for group_name in GROUPS:
            new_group = Group.objects.filter(name=group_name).first()
            if new_group is None:
                new_group = Group.objects.create(name=group_name)
            for app_model in GROUPS[group_name]:
                for permission_name in GROUPS[group_name][app_model]:
                    name = f"Can {permission_name} {app_model.lower()}"
                    try:
                        model_add_perm = Permission.objects.get(name=name)
                    except Permission.DoesNotExist:
                        print("Permission not found with name '{}'.".format(name))
                        continue
                    new_group.permissions.add(model_add_perm)
        return "Crete Group Successfully"


class RoleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Role
        fields = '__all__'
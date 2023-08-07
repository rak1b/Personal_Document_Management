from rest_framework.permissions import BasePermission

class DocumentDownloadPermission(BasePermission):
    def has_object_permission(self, request, view, obj):
        # Check if the user is the owner of the document.
        if obj.owner == request.user:
            return True

        # Check if the user is listed in the 'shared_with' field.
        if request.user in obj.shared_with.all():
            return True

        return False
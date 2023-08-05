from django.urls import path
from rest_framework import routers

from . import views

router = routers.DefaultRouter()
router.register(r"groups", views.GroupAPI, basename="groups")
router.register(r"permissions", views.PermissionAPI, basename="permissions")
router.register(r"role", views.RoleAPI, basename="role")

urlpatterns = [
    # path("<int:user>/product/<int:id>/", views.ProductGetApi.as_view()),
]
urlpatterns += router.urls

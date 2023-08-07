from django.urls import path
from rest_framework import routers

from . import views

router = routers.DefaultRouter()
router.register(r"", views.DocumentAPI)


urlpatterns = [
    # path('upload/', views.UploadDocumentsAPI.as_view(), name='documents-upload'),
]
urlpatterns += router.urls

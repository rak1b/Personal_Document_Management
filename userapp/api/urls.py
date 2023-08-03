from django.urls import path, include

urlpatterns = [
    path("mobile/", include("userapp.api.mobile.urls")),
    path("admin/", include("userapp.api.admin.urls")),
    path("web/", include("userapp.api.web.urls"))
]

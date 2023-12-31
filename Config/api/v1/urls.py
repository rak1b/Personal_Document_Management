from django.urls import path, include

app_name = 'api-v1'

urlpatterns = [
    path('auth/', include('coreapp.api.urls')),
    path('utility/', include('utility.api.urls')),
    path('users/', include('userapp.api.urls')),
    path('documents/', include('documents.api.urls')),
]

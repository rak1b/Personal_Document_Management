from django.urls import path
from rest_framework import routers

from . import views

router = routers.DefaultRouter()
# router.register(r"payment", views.PaymentAPI, basename="PaymentAPI")

urlpatterns = [
    # path("payment/", views.PaymentAPI.as_view())
]
urlpatterns += router.urls

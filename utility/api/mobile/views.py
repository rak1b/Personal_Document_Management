from django.utils.translation import gettext_lazy as _
from django_filters import rest_framework as dj_filters
from drf_spectacular.utils import extend_schema
from rest_framework import viewsets, status, views
from rest_framework.decorators import action
from rest_framework.permissions import AllowAny
from rest_framework.response import Response
from rest_framework.views import APIView

from . import serializers
from .. import filters
from ... import constants
from coreapp.utils.auth_utils import get_client_info


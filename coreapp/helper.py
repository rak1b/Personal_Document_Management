from drf_spectacular.utils import extend_schema
from rest_framework.permissions import IsAdminUser, AllowAny, IsAuthenticated,DjangoModelPermissions
from rest_framework.response import Response
from rest_framework import status
from django_filters.rest_framework import DjangoFilterBackend
from django.utils.translation import gettext_lazy as _
from django_filters import rest_framework as dj_filters
from rest_framework.viewsets import ModelViewSet, GenericViewSet
from rest_framework.mixins import ListModelMixin
from rest_framework.views import APIView
from rest_framework.decorators import action
from coreapp.pagination import paginate
from rest_framework.pagination import LimitOffsetPagination
from django.db.models import Q, Sum, Count, Avg, Max, Min
from django.http import HttpResponse, JsonResponse
from rest_framework import filters
import traceback
from functools import partial
from django.shortcuts import render
from rest_framework.viewsets import ViewSet
from django.utils.crypto import get_random_string
from PIL import Image
from django.utils.decorators import method_decorator
from django.conf import settings


def print_log(log):
    import logging
    logger = logging.getLogger('django')
    logger.error(log)
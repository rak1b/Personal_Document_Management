from drf_spectacular.utils import extend_schema
from rest_framework import viewsets, mixins, views, status
from rest_framework.permissions import IsAdminUser
from rest_framework.response import Response
from django_filters import rest_framework as dj_filters
from . import serializers
from .. import filters
from ...models import *
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters


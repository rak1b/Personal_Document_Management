from django.contrib.auth.admin import UserAdmin
from .models import User
from django.contrib import admin
from django.apps import apps

models = apps.get_models()

for model in models:
    if not admin.site.is_registered(model):
        admin.site.register(model)

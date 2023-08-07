from django.db import models
from coreapp.base import BaseModel
from django.conf import settings
from . import constants
from coreapp.base import BaseModel
from django.core.exceptions import ValidationError
from django.core.validators import FileExtensionValidator
from .validators import ConditionalMaxFileSizeValidator

# Create your models here.


class Document(BaseModel):
    title = models.CharField(max_length=200)
    description = models.TextField(blank=True, null=True)
    owner = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE, blank=True, null=True
    )
    document = models.FileField(
        upload_to="documents/%Y/%m/%d/",
        validators=[
            FileExtensionValidator(allowed_extensions=constants.EXTENSION_MAX_SIZES.keys())
        ],
    )

    doc_type = models.SmallIntegerField(choices=constants.DocumentChoices.choices)
    shared_with = models.ManyToManyField(
        settings.AUTH_USER_MODEL, related_name="shared_with", blank=True
    )

    def __str__(self):
        return f"{self.owner} - {self.document.name}"

    # def clean(self):
    #     print("In clean method----------1212121")
    #     super().clean()
    #     extension = self.document.name.split(".")[-1].lower()
    #     max_size = self.EXTENSION_MAX_SIZES.get(extension)
    #     print("max_size", max_size)
    #     print("self.document.size", self.document.size)
    #     if max_size and self.document.size > max_size:
    #         raise ValidationError(
    #             f"File size exceeds the maximum limit of {max_size} bytes."
    #         )

    # def save(self, *args, **kwargs):
    #     self.clean()  # Call the clean method to perform validation
    #     super().save(*args, **kwargs)

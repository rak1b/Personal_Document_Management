from django.db import models
from django.utils.translation import gettext_lazy as _

class DocumentChoices(models.IntegerChoices):
    IMAGE = 0, _("Image")
    VIDEO = 1, _("Video")
    PDF = 2, _("PDF")
    DOCS= 3, _("Docs")
    EXCEL = 4, _("Excel")
    OTHER = 5, _("Other")


EXTENSION_MAX_SIZES = {
        "jpg": 5 * 1024 * 1024,  # 5 MB for jpg files
        "png": 5 * 1024 * 1024,  # 5 MB for png files
        "mp4": 50 * 1024 * 1024,  # 50 MB for mp4 files
        "pdf": 10 * 1024 * 1024,  # 10 MB for pdf files
        "doc": 10 * 1024 * 1024,  # 10 MB for doc files
        "docx": 10 * 1024 * 1024,  # 10 MB for docx files
        "xlsx": 10 * 1024 * 1024,  # 10 MB for xlsx files
    }

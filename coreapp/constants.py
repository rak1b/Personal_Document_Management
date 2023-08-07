from django.db import models
from django.utils.translation import gettext_lazy as _


# Gender  Options
class GenderChoices(models.IntegerChoices):
    MALE = 0, _("Male")
    FEMALE = 1, _("Female")
    OTHER = 2, _("Other")


# Document  Options

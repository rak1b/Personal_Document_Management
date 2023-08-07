from django.core.exceptions import ValidationError
from django.core.validators import FileExtensionValidator

class ConditionalMaxFileSizeValidator:
    def __init__(self, max_size_by_extension):
        self.max_size_by_extension = max_size_by_extension

    def __call__(self, value):
        extension = value.name.split('.')[-1].lower()
        max_size = self.max_size_by_extension.get(extension)
        if max_size and value.size > max_size:
            raise ValidationError(f"File size exceeds the maximum limit of {max_size} bytes.")
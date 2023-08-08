from rest_framework import serializers
from ..models import *
from .. import constants

class DocumentSerializer(serializers.ModelSerializer):
    doc_url = serializers.CharField(read_only=True, source="get_url")

    class Meta:
        model = Document
        fields = '__all__'
        read_only_fields = ('owner',)

    def validate(self, attrs):
        document = attrs.get('document')
        max_size = constants.EXTENSION_MAX_SIZES.get(document.name.split('.')[-1].lower(), 0)
        if document.size > max_size:
            raise serializers.ValidationError(f"File size exceeds the maximum limit of {max_size} bytes.")
        return super().validate(attrs)

    def create(self, validated_data):
        validated_data['owner'] = self.context['request'].user
        return super().create(validated_data)
    

class DocumentShareSerializer(serializers.Serializer):
    users=serializers.ListField(child=serializers.IntegerField())
    share=serializers.BooleanField(default=True)


class DocumentConvertSerializer(serializers.Serializer):
    convert_format = serializers.IntegerField()
import uuid

from django.contrib.auth.models import User
from django.db import models


class Page(models.Model):
    uuid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=255)
    revision = models.IntegerField()
    parent = models.ForeignKey('Namespace', related_name='pages')
    author = models.ForeignKey(User, related_name='pages', on_delete=models.SET_NULL, blank=True, null=True)
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name


class Namespace(models.Model):
    uuid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=255)
    parent = models.ForeignKey('Namespace', related_name='children', blank=True, null=True)
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

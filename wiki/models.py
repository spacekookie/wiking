from django.contrib.auth.models import User
from django.db import models


class Page(models.Model):
    uuid = models.UUIDField(unique=True)
    name = models.CharField(max_length=255)
    revision = models.IntegerField()
    parent = models.ForeignKey('Namespace', related_name='pages')
    author = models.ForeignKey(User, related_name='pages')
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name


class Namespace(models.Model):
    uuid = models.UUIDField(unique=True)
    name = models.CharField(max_length=255)
    parent = models.ForeignKey('Namespace', related_name='children', blank=True, null=True)
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

# class Profile(models.Model):
#
#     user = models.OneToOneField(User, on_delete=models.CASCADE)
#
#     @receiver(post_save, sender=get_user_model())
#     def create_user_profile(sender, instance, created, **kwargs):
#         if created:
#             Author.objects.create(user=instance)
#
#     @receiver(post_save, sender=get_user_model())
#     def save_user_profile(sender, instance, **kwargs):
#         instance.profile.save()
#
#     def __str__(self):
#         return "%s <%s>" % (self.user.username, self.user.email)
#
#     class Meta:
#         ordering = ('user', )

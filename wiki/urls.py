from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^(?P<slug>(?:(?:[a-z0-9]+(?:-[a-z0-9]+)*):)*(?:[a-z0-9]+(?:-[a-z0-9]+)*)*)$', views.index, name='index')
]

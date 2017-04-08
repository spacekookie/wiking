from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.

def index(request, slug):
    parts = slug.split(':')
    if len(parts) > 0:
        if parts[-1] == '':
            parts[-1] = 'start'
    return HttpResponse('hello! %s' % '->'.join(parts))
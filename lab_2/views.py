from django.shortcuts import render
from django.http.response import HttpResponse
from django.core import serializers
from .models import Note


def index(request):
    response = {'notes': Note.objects.all()}
    return render(request, 'lab2.html', response)


def xml(request):
    data = serializers.serialize('xml', Note.objects.all())
    return HttpResponse(data, content_type="application/xml")


def json(request):
    data = serializers.serialize('json', Note.objects.all())
    return HttpResponse(data, content_type="application/json")
from django.urls import path
from .views import index, xml, json

urlpatterns = [
    path('', index, name='index'),
    path('xml', xml),
    path('json', json),
]

from django.db import models


class Friend(models.Model):
    name = models.CharField(max_length=30)
    npm = models.PositiveIntegerField()
    DOB = models.DateField(max_length=8)

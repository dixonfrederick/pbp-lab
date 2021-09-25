from django.db import models


class Note(models.Model):
    To = models.TextField()
    From = models.TextField()
    title = models.TextField()
    message = models.TextField()

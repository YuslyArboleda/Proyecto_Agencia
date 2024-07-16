from django.db import models

class Permiso(models.Model):
    nombre = models.CharField(max_length=50)
    estado = models.BooleanField()

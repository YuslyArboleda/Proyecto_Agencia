from django.db import models

class Costos (models.Model):
    nombre = models.CharField (max_length = 200)
    descripcion = models.CharField (max_length = 500)
    fecha_inicio = models.DateField()
    fecha_fin = models.DateField()
    noche = models.IntegerField()
    incluye = models.CharField (max_length = 200)
    no_incluye = models.CharField (max_length = 200)
    costo = models.FloatField()
    estado = models.BooleanField()
    disponibilidad = models.CharField (max_length = 50)



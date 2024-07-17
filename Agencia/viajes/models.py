from django.db import models


class Costos(models.Model):
    nombre = models.CharField(max_length=50)
    correo = models.EmailField(max_length=100)
    estado = models.BooleanField()
    fecha = models.DateField()
    reserva = models.ForeignKey(Reserva, on_delete=models.CASCADE)
    habitacion = models.IntegerField()
    costo = models.FloatField()

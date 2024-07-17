from django.db import models

<<<<<<< HEAD
class Acomodacion(models.Model):
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=300)
    estado = models.BooleanField()

class hospedaje_acomodacion(models.Model):
    id_acomodacion = models.ForeignKey(id_acomodacion, on_delete=models.CASCADE)
    id_hospedaje = models.ForeignKey(id_hospedaje, on_delete=models.CASCADE)
    temporada = models.CharField(max_length=20)
    tarifa_agencia = models.FloatField()
    tarifa = models.FloatField()
    estado_hospe_aco = models.BooleanField()
=======
>>>>>>> d1cde30f4b684ac59d2a4d20bef611eb9b94f668

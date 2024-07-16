from django.db import models
<<<<<<< HEAD

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
=======
class Cliente(models.Model):
    nombre =models.CharField(max_length=45),
    telefono =models.CharField(max_length=45),
    correo =models.EmailField(max_length=45),
    direccion =models.CharField(max_length=45),
    cantidad =models.CharField(max_length=45),
    estado =models.BooleanField(),



>>>>>>> a55a0caaf641ad9d310c36b1ff461911b1a4271c



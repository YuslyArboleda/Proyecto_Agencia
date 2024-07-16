from django.db import models
<<<<<<< HEAD


class Paquete (models.Model):
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
    nombre =models.CharField(max_length=200)
    Tipo_doc =models.CharField(max_length=20)
    telefono =models.CharField(max_length=20)
    correo =models.EmailField(max_length=200)
    direccion =models.CharField(max_length=50)
    cantidad =models.CharField(max_length=45)
    estado =models.BooleanField()

# Modelo
>>>>>>> 2c597f6c6b176eaa6a57870f40c18608eca64f54






from django.db import models
class Cliente(models.Model):
    nombre =models.CharField(max_length=45),
    telefono =models.CharField(max_length=45),
    correo =models.EmailField(max_length=45),
    direccion =models.CharField(max_length=45),
    cantidad =models.CharField(max_length=45),
    estado =models.BooleanField(),






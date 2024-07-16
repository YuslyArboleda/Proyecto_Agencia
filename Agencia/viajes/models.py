from django.db import models

class Usuario(models.Model):
    nombre = models.CharField(max_length=200)
    tipo_documento = models.CharField(max_length=20)
    documento = models.CharField(max_length=20)
    telefono = models.CharField(max_length=20)
    correo = models.email_field(max_length=200)
    sexo = models.IntegerField()
    direccion = models.email_field(max_length=50)
    rol = models.IntegerField()
    login = models.CharField(max_length=30)
    clave = models.CharField(max_length=40)
    estado = models.BooleanField()
    fecha_creacion = models.DateTimeField()
    
class Paquete_Tour(models.Model):
    id_tour = models.ForeignKey(Tour, on_delete= models.CASCADE)
    id_paquete = models.ForeignKey(Paquete, on_delete= models.CASCADE)
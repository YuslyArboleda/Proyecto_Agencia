from django.db import models
<<<<<<< HEAD

class Permiso(models.Model):
    nombre = models.CharField(max_length=50)
    estado = models.BooleanField()
=======
<<<<<<< HEAD
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
    fecha_creacion = models.DateTimeField()
    estado = models.BooleanField()
class Paquete_Tour(models.Model):
    id_tour = models.ForeignKey(Tour, on_delete= models.CASCADE)
    id_paquete = models.ForeignKey(Paquete, on_delete= models.CASCADE)
=======

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


class Cliente(models.Model):
    nombre =models.CharField(max_length=200)
    Tipo_doc =models.CharField(max_length=20)
    telefono =models.CharField(max_length=20)
    correo =models.EmailField(max_length=200)
    direccion =models.CharField(max_length=50)
    cantidad =models.CharField(max_length=45)
    estado =models.BooleanField()







>>>>>>> d9b5c5e887730c02f61252d2b69fee8b8d336d57
>>>>>>> 54ebe0cc41079086511f678c79fe6b0daa7f88e4

from django.db import models

class Destino (models.Model):
    id_destino = models.models.IntegerField()
    departamento = models.CharField(max_length=50)
    ciudad = models.CharField(max_length=50)
    estado = models.BooleanField()

class Permiso_usuario (models.Model):
    idPermiso_usuario = models.IntegerField
    id_permiso = models.models.ForeignKey(permiso, on_delete=models.CASCADE)()
    id_usua = models.models.ForeignKey(usuario, on_delete=models.CASCADE)
    estado = models.BooleanField()
    
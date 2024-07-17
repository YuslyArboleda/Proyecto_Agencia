# from django.db import models
# class Reserva(models.Model):
#     idReserva =models.IntegerField
#     id_usuar =models.ForeignKey(max_length=45)
#     fecha =models.DateField(max_length=45)
#     fecha_inicio =models.DateField(max_length=45)
#     fecha_fin =models.DateField(max_length=45)
#     cantidad =models.IntegerField(max_length=45)
#     total =models.FloatField(max_length=45)
#     estado_reserva =models.CharField(max_length=45)
#     metodo_pago =models.CharField(max_length=45)
#     estado =models.BooleanField()

from django.db import models
class detalle_reserva(models.Model):
    id_detalle_reserva =models.IntegerField()
    id_resrva =models.ForeignKey()
    id_paquete =models.ForeignKey()
    id_acomodacion =models.ForeignKey()
    id_adicion =models.ForeignKey()
    habitaciones =models.IntegerField()
    adulto =models.IntegerField()
    infante =models.IntegerField
    comentarios =models.CharField()
    estado =models.BooleanField()




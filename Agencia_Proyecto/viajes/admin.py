from django.contrib import admin
from .models import (Acomodacion,
                     Adicion,
                     Cliente,
                     Destino,
                     DetalleReserva,
                     Hospedaje,
                     HospedajeAcomodacion,
                     Paquete,
                     PaqueteTour,
                     Permiso,
                     PermisoUsuario,
                     Reserva,
                     Tour,
                     Usuario)

admin.register(Acomodacion)
admin.register(Adicion)
admin.register(Cliente)
admin.register(Destino)
admin.register(DetalleReserva)
admin.register(Hospedaje)
admin.register(HospedajeAcomodacion)
admin.register(Paquete)
admin.register(PaqueteTour)
admin.register(Reserva)
admin.register(Tour)
# Register your models here.

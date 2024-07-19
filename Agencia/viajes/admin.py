from django.contrib import admin
from .models import (
    Acomodacion,
    Reserva,
    Cliente,
    Destino,
    Hospedaje,
    HospedajeAcomodacion,
    Paquete,
    Tour,
    PaqueteTour,
    Adicion,
    DetalleReserva,
)

admin.register(Acomodacion)
admin.register(Hospedaje)
admin.register(HospedajeAcomodacion)
admin.register(Reserva)
admin.register(Cliente)
admin.register(Destino)
admin.register(DetalleReserva)
admin.register(Adicion)
admin.register(PaqueteTour)
admin.register(Tour)
admin.register(Cliente)
admin.register(Paquete)

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

admin.site.register(Acomodacion)
admin.site.register(Hospedaje)
admin.site.register(HospedajeAcomodacion)
admin.site.register(Reserva)
admin.site.register(Cliente)
admin.site.register(Destino)
admin.site.register(DetalleReserva)
admin.site.register(Adicion)
admin.site.register(PaqueteTour)
admin.site.register(Tour)
admin.site.register(Paquete)
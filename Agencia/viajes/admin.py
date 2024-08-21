from django.contrib import admin
<<<<<<< HEAD
from .models import (Acomodacion,
                     Adicion,
                     Cliente,
                     Destino,
                     DetalleReserva,
                     Hospedaje,
                     HospedajeAcomodacion,
                     Paquete,
                     PaqueteTour,
                     Reserva,
                     Tour)

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
=======
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
>>>>>>> origin

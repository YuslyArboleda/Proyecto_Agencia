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


class BaseAdmin(admin.ModelAdmin):
    class Media:
        js=("js/jquery-3.7.1.min.js", "js/paquete.js")#agregue la clase de jquery del index al admin, el archivo admin dinamica


class HospedajeAcomodacionInline(admin.TabularInline):
    model= HospedajeAcomodacion #nombre del modelo donde se va a guardar la informacion
    extra=1 #nos indica que al menos debe haber un registro


class HospedajeAdmin(BaseAdmin): #se registra en el modelo          
    inlines= [HospedajeAcomodacionInline]


admin.site.register(Acomodacion)
admin.site.register(Hospedaje, HospedajeAdmin)
#admin.site.register(HospedajeAcomodacion)
admin.site.register(Reserva)
admin.site.register(Cliente)
admin.site.register(Destino)
admin.site.register(DetalleReserva)      
admin.site.register(Adicion)
admin.site.register(PaqueteTour)
admin.site.register(Tour)
admin.site.register(Paquete)
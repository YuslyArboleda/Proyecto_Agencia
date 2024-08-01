from django.shortcuts import render
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

from .serializers import (AcomodacionSerializer,
                            AdicionSerializer,
                            ClienteSerializer,
                            DestinoSerializer,
                            DetalleReservaSerializer,
                            HospedajeSerializer,
                            HospedajeAcomodacionSerializer,
                            PaqueteSerializer,
                            PaqueteTourSerializer,
                            ReservaSerializer,
                            TourSerializer,
                            )

from rest_framework import viewsets
class AcomodacionViewSet(viewsets.ModelViewSet):
    queryset = Acomodacion.objects.all()
    serializer_class = AcomodacionSerializer

from rest_framework import viewsets
class AdicionViewSet(viewsets.ModelViewSet):
    queryset = Adicion.objects.all()
    serializer_class = AdicionSerializer

from rest_framework import viewsets
class ClienteViewSet(viewsets.ModelViewSet):
    queryset = Cliente.objects.all()
    serializer_class = ClienteSerializer

from rest_framework import viewsets
class DestinoViewSet(viewsets.ModelViewSet):
    queryset = Destino.objects.all()
    serializer_class = DestinoSerializer

from rest_framework import viewsets
class DetalleReservaViewSet(viewsets.ModelViewSet):
    queryset = DetalleReserva.objects.all()
    serializer_class = DetalleReservaSerializer

from rest_framework import viewsets
class HospedajeViewSet(viewsets.ModelViewSet):
    queryset = Hospedaje.objects.all()
    serializer_class = HospedajeSerializer

from rest_framework import viewsets
class HospedajeAcomodacionViewSet(viewsets.ModelViewSet):
    queryset = HospedajeAcomodacion.objects.all()
    serializer_class = HospedajeAcomodacionSerializer

from rest_framework import viewsets
class PaqueteViewSet(viewsets.ModelViewSet):
    queryset = Paquete.objects.all()
    serializer_class = PaqueteSerializer

from rest_framework import viewsets
class PaqueteTourViewSet(viewsets.ModelViewSet):
    queryset = PaqueteTour.objects.all()
    serializer_class = PaqueteTourSerializer

from rest_framework import viewsets
class ReservaViewSet(viewsets.ModelViewSet):
    queryset = Reserva.objects.all()
    serializer_class = ReservaSerializer

from rest_framework import viewsets
class TourViewSet(viewsets.ModelViewSet):
    queryset = Tour.objects.all()
    serializer_class = TourSerializer 

def index(request):
    return render(request, 'index.html')    
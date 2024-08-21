from django.urls import path, include
from rest_framework import routers
from viajes import views

router = routers.DefaultRouter()
router.register(r'acomodacion', views.AcomodacionViewSet)
router.register(r'adicion', views.AdicionViewSet)
router.register(r'cliente', views.ClienteViewSet)
router.register(r'destino', views.DestinoViewSet)
router.register(r'detalle_reserva', views.DetalleReservaViewSet)
router.register(r'hospedaje', views.HospedajeViewSet)
router.register(r'hospedaje_acomodacion', views.HospedajeAcomodacionViewSet)
router.register(r'paquete', views.PaqueteViewSet)
router.register(r'paquete_tour', views.PaqueteTourViewSet)
router.register(r'reserva', views.ReservaViewSet)
router.register(r'tour', views.TourViewSet)

urlpatterns = [path('agencia/', include(routers.urls)),
               path("",views.index,name="index"),
               ]
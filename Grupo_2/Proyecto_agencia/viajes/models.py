from django.db import models
class Acomodacion(models.Model):
    id_acomodacion = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=300)
    descripcion = models.CharField(max_length=300)
    estado = models.IntegerField()

class Adicion(models.Model):
    id_adicion = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=20)
    descripcion = models.CharField(max_length=200)
    costo = models.FloatField()
    estado = models.IntegerField()

class Cliente(models.Model):
    id_cliente = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=200)
    tipo_doc = models.CharField(max_length=20)
    documento = models.CharField(unique=True, max_length=20)
    telefono = models.CharField(max_length=20)
    correo = models.CharField(max_length=200)
    direccion = models.CharField(max_length=50)
    id_destino = models.ForeignKey('Destino', models.DO_NOTHING, db_column='id_destino')
    estado = models.IntegerField()

class Destino(models.Model):
    id_destino = models.AutoField(primary_key=True)
    destino = models.CharField(max_length=200)
    estado = models.IntegerField()

class DetalleReserva(models.Model):
    id_detalle_reserva = models.AutoField(primary_key=True)
    id_reserva = models.ForeignKey('Reserva', models.DO_NOTHING, db_column='id_reserva')
    id_paquete_tour = models.ForeignKey('PaqueteTour', models.DO_NOTHING, db_column='id_paquete_tour', blank=True, null=True)
    id_acomodacion = models.ForeignKey(Acomodacion, models.DO_NOTHING, db_column='id_acomodacion', blank=True, null=True)
    id_adicion = models.ForeignKey(Adicion, models.DO_NOTHING, db_column='id_adicion', blank=True, null=True)
    habitaciones = models.IntegerField()
    adulto = models.IntegerField()
    infante = models.IntegerField()
    comentarios = models.CharField(max_length=500, blank=True, null=True)

class Hospedaje(models.Model):
    id_hospedaje = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    direccion = models.CharField(max_length=50)
    correo = models.CharField(max_length=30)
    tipo_hospedaje = models.CharField(max_length=30)
    descripcion = models.CharField(max_length=100)
    tarifa_base = models.FloatField()
    id_destino = models.ForeignKey(Destino, models.DO_NOTHING, db_column='id_destino')
    estado = models.IntegerField()
    imagen = models.ImageField(upload_to="relative/path/to/upload",blank=True, null=True)

class HospedajeAcomodacion(models.Model):
    id_hospedaje_acomodacion = models.AutoField(primary_key=True)
    id_acomodacion = models.ForeignKey(Acomodacion, models.DO_NOTHING, db_column='id_acomodacion')
    id_hospedaje = models.ForeignKey(Hospedaje, models.DO_NOTHING, db_column='id_hospedaje')
    temporada = models.CharField(max_length=20)
    tarifa_agencia = models.FloatField()
    tarifa = models.FloatField()
    imagen = models.ImageField(upload_to="relative/path/to/upload",blank=True, null=True)

class Paquete(models.Model):
    id_paquete = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=200)
    descripcion = models.CharField(max_length=500)
    vigencia_inicio = models.DateField()
    vigencia_fin = models.DateField()
    noche = models.IntegerField()
    incluye = models.CharField(max_length=200)
    no_incluye = models.CharField(max_length=200)
    costo = models.FloatField()
    disponibilidad = models.CharField(max_length=50)
    estado = models.IntegerField()

class PaqueteTour(models.Model):
    id_paquete_tour = models.AutoField(primary_key=True)
    id_paquete = models.ForeignKey(Paquete, models.DO_NOTHING, db_column='id_paquete')
    id_tour = models.ForeignKey('Tour', models.DO_NOTHING, db_column='id_tour')

class Reserva(models.Model):
    id_reserva = models.AutoField(primary_key=True)
    fecha = models.DateField()
    fecha_inicio = models.DateField()
    fecha_fin = models.DateField()
    cantidad = models.IntegerField()
    total = models.FloatField()
    estado_reserva = models.CharField(max_length=20)
    metodo_pago = models.CharField(max_length=20)
    id_cliente = models.ForeignKey('Cliente', models.DO_NOTHING, db_column='id_cliente')
    estado = models.IntegerField()

class Tour(models.Model):
    id_tour = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=50)
    descripcion = models.CharField(max_length=200, blank=True, null=True)
    valor = models.FloatField()
    duracion = models.IntegerField()
    estado = models.IntegerField()
    id_destino = models.ForeignKey(Destino, models.DO_NOTHING, db_column='id_destino')
    imagen = models.ImageField(upload_to="relative/path/to/upload",blank=True, null=True)

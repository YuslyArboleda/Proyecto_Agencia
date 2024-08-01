# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Acomodacion(models.Model):
    id_acomodacion = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    descripcion = models.CharField(max_length=300)
    estado_acomoda = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'acomodacion'


class Adicion(models.Model):
    id_adicion = models.AutoField(db_column='id_Adicion', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='Nombre', max_length=20)  # Field name made lowercase.
    descripcion = models.CharField(db_column='Descripcion', max_length=200)  # Field name made lowercase.
    costo = models.FloatField(db_column='Costo')  # Field name made lowercase.
    estado = models.IntegerField(db_column='Estado')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'adicion'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Cliente(models.Model):
    idcliente = models.AutoField(primary_key=True)
    nombre = models.CharField(db_column='Nombre', max_length=200)  # Field name made lowercase.
    tipo_doc = models.CharField(db_column='Tipo_doc', max_length=20)  # Field name made lowercase.
    telefono = models.CharField(db_column='Telefono', max_length=20)  # Field name made lowercase.
    correo = models.CharField(db_column='Correo', max_length=200)  # Field name made lowercase.
    direccion = models.CharField(db_column='Direccion', max_length=50)  # Field name made lowercase.
    cantidad = models.CharField(db_column='Cantidad', max_length=45)  # Field name made lowercase.
    estado = models.IntegerField(db_column='Estado')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'cliente'


class Destino(models.Model):
    id_destino = models.AutoField(db_column='id_Destino', primary_key=True)  # Field name made lowercase.
    departamento = models.CharField(db_column='Departamento', max_length=50)  # Field name made lowercase.
    ciudad = models.CharField(db_column='Ciudad', max_length=45)  # Field name made lowercase.
    estado = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'destino'


class DetalleReserva(models.Model):
    id_detalle_reserva = models.IntegerField(primary_key=True)
    id_reserva = models.ForeignKey('Reserva', models.DO_NOTHING, db_column='id_reserva')
    id_paquete_tour = models.ForeignKey('PaqueteTour', models.DO_NOTHING, db_column='id_paquete_tour', blank=True, null=True)
    id_acomodacion = models.ForeignKey(Acomodacion, models.DO_NOTHING, db_column='id_acomodacion', blank=True, null=True)
    id_adicion = models.ForeignKey(Adicion, models.DO_NOTHING, db_column='id_adicion', blank=True, null=True)
    habitaciones = models.IntegerField()
    adulto = models.IntegerField()
    infante = models.IntegerField()
    comentarios = models.CharField(max_length=500)
    estado = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'detalle_reserva'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Hospedaje(models.Model):
    idhospedaje = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    direccion = models.CharField(max_length=50)
    correo = models.CharField(max_length=30)
    tipo_hospedaje = models.CharField(max_length=30)
    descripcion = models.CharField(max_length=45)
    tarifa_base = models.FloatField()
    id_destino = models.ForeignKey(Destino, models.DO_NOTHING, db_column='id_Destino')  # Field name made lowercase.
    estado = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'hospedaje'


class HospedajeAcomodacion(models.Model):
    id_hospedaje_acomodacion = models.AutoField(primary_key=True)
    id_acomodacion = models.ForeignKey(Acomodacion, models.DO_NOTHING, db_column='id_acomodacion')
    id_hospedaje = models.ForeignKey(Hospedaje, models.DO_NOTHING, db_column='id_hospedaje')
    temporada = models.CharField(max_length=20)
    tarifa_agencia = models.FloatField()
    tarifa = models.FloatField()
    estado_hospeacomo = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'hospedaje_acomodacion'


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
    estado = models.IntegerField()
    disponibilidad = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'paquete'


class PaqueteTour(models.Model):
    idpaquete_tour = models.AutoField(db_column='idPaquete_tour', primary_key=True)  # Field name made lowercase.
    id_tour = models.ForeignKey('Tour', models.DO_NOTHING, db_column='id_tour')
    id_paquete = models.ForeignKey(Paquete, models.DO_NOTHING, db_column='id_paquete')
    condicion = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'paquete_tour'


class Permiso(models.Model):
    idpermiso = models.AutoField(primary_key=True)
    nombre = models.CharField(db_column='Nombre', max_length=50)  # Field name made lowercase.
    estado = models.IntegerField(db_column='Estado')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'permiso'


class PermisoUsuario(models.Model):
    idpermiso_usuario = models.AutoField(db_column='idPermiso_usuario', primary_key=True)  # Field name made lowercase.
    id_permiso = models.ForeignKey(Permiso, models.DO_NOTHING, db_column='id_permiso')
    id_usua = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='id_usua')
    estado = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'permiso_usuario'


class Reserva(models.Model):
    idreserva = models.AutoField(db_column='idReserva', primary_key=True)  # Field name made lowercase.
    id_usuar = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='id_usuar')
    fecha = models.DateField(db_column='Fecha')  # Field name made lowercase.
    fecha_inicio = models.DateField(db_column='Fecha_inicio')  # Field name made lowercase.
    fecha_fin = models.DateField(db_column='Fecha_fin')  # Field name made lowercase.
    cantidad = models.IntegerField(db_column='Cantidad')  # Field name made lowercase.
    total = models.FloatField(db_column='Total')  # Field name made lowercase.
    estado_reserva = models.CharField(db_column='Estado_reserva', max_length=25)  # Field name made lowercase.
    metodo_pago = models.CharField(db_column='Metodo_pago', max_length=25)  # Field name made lowercase.
    estado = models.IntegerField(db_column='Estado')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'reserva'


class Tour(models.Model):
    id_tour = models.AutoField(primary_key=True)
    nombre_tour = models.CharField(max_length=50)
    descripcion = models.CharField(max_length=200)
    valor = models.FloatField()
    duracion = models.IntegerField()
    id_destino = models.ForeignKey(Destino, models.DO_NOTHING, db_column='id_destino')
    estado = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'tour'


class Usuario(models.Model):
    idusuario = models.AutoField(db_column='idUsuario', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(max_length=200)
    tipo_doc = models.CharField(max_length=20)
    documento = models.CharField(max_length=20)
    correo = models.CharField(max_length=200)
    sexo = models.IntegerField()
    direccion = models.CharField(max_length=50)
    rol = models.IntegerField()
    login = models.CharField(max_length=30)
    clave = models.CharField(max_length=40)
    fecha_creacion = models.DateField()
    estado = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'usuario'

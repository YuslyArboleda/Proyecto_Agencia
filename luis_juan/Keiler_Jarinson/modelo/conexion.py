# Importar la biblioteca de conexión
import mysql.connector

# Establecer la conexión
try:
    connection = mysql.connector.connect(
        host="localhost", user="root", password="1234", database="agencia_jarinson_keiler"
    )

    if connection.is_connected():
        print("Conexión exitosa a la base de datos")
        cursor = connection.cursor()
        cursor.execute("SELECT DATABASE();")
        record = cursor.fetchone()
        print("Conectado a la base de datos:", record)

except mysql.connector.Error as err:
    print(f"Error: {err}")
finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("La conexión a la base de datos se ha cerrado.")


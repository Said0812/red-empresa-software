import os

# Definir la carpeta donde están los archivos
carpeta = "/home/fweek/Documents/"

# Listar archivos en la carpeta
archivos = os.listdir(carpeta)

# Iterar sobre cada archivo y renombrarlo
for idx, archivo in enumerate(archivos):
    extension = archivo.split(".")[-1]  # Obtener la extensión del archivo
    nuevo_nombre = f"archivo_{idx + 1}.{extension}"  # Crear nuevo nombre
    os.rename(os.path.join(carpeta, archivo), os.path.join(carpeta, nuevo_nombre))

print("Archivos renombrados exitosamente.")

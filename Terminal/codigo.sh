# Comandos basicos de Linux

echo "Hola, mundo!"

mkdir prueba 
mkdir prueba2 prueba3 preuba4 # Crea varias carpetas a la vez

uname -a # Da informacion del sistema operativo

man echo # Abre el manual del comando echo


# Ejercicio mas completo ----------------------------------------------------------------
mkdir pruebas
cd pruebas

mkdir md5 md4 sha1 sha256 sha512
# Crear un archivo vacío en la carpeta md5
touch md5/ejemplo.txt

# Crear varios archivos a la vez
touch sha1/file1.txt sha1/file2.txt

# Crear archivos en todas sus carpetas
touch md4/test1.txt sha256/test2.txt sha512/test3.txt

echo "Hola MD5" > md5/info.txt
echo "Este es un archivo en SHA1" > sha1/info.txt
echo "Contenido para MD4" > md4/info.txt
echo "Contenido para SHA256" > sha256/info.txt
echo "Contenido para SHA512" > sha512/info.txt




# Practica 2 ----------------------------------------------------------------

# Creamos una carpeta para practicar y entramos en ella
mkdir PracticaArchivos
cd PracticaArchivos

# Creamos algunos archivos de prueba con texto adentro
echo "Primera línea de notas" > notas.txt
echo "Segunda línea de notas" >> notas.txt
echo "Archivo de configuración de prueba" > config.conf
echo "Este es un registro de errores" > errores.log

# Revisamos qué tipo de archivo es cada uno
file notas.txt
file config.conf
file errores.log

# Copiamos y movemos archivos
cp notas.txt copia_notas.txt
mv config.conf configuracion.conf # Renombra el archivo config.conf a configuracion.conf

# Vemos el contenido de los archivos
cat notas.txt
head -n 1 notas.txt
tail -n 1 notas.txt
less errores.log

# Borramos un archivo que ya no necesitamos
rm copia_notas.txt



# Practica 3 ----------------------------------------------------------------
# * → cualquier cosa
# ???? → exactamente 4 caracteres
# */archivo → en todas las carpetas


mkdir pruebas
cd pruebas

mkdir md5 md4 sha1 sha256 sha512
# Crear un archivo vacío en la carpeta md5
touch md5/ejemplo.txt

# Crear varios archivos a la vez
touch sha1/file1.txt sha1/file2.txt

# Crear archivos en todas tus carpetas
touch md4/test1.txt sha256/test2.txt sha512/test3.txt

echo "Hola MD5" > md5/info.txt
echo "Este es un archivo en SHA1" > sha1/info.txt
echo "Contenido para MD4" > md4/info.txt
echo "Contenido para SHA256" > sha256/info.txt
echo "Contenido para SHA512" > sha512/info.txt

# Mostrar todos los archivos .txt en todas las carpetas
ls */*.txt

# Copiar todos los archivos que empiecen con "test" a la carpeta md5
cp */test*.txt md5/

# Eliminar solo los archivos que terminen en "1.txt"
rm */*1.txt

# Mostrar archivos con exactamente 4 letras en el nombre antes del .txt
ls */????.txt



# https://www.canva.com/design/DAGz1v5cEz4/A_T1t2LJUAywxhCxIZRJBA/edit?utm_content=DAGz1v5cEz4&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

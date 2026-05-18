# ZZZ Academy — Backend

Backend del TFG **ZZZ Academy**, una aplicación web de referencia para el videojuego *Zenless Zone Zero*. Desarrollado con **Spring Boot 3.5.9** y **Java 25**, expone una API REST con autenticación JWT y base de datos PostgreSQL.

---

## Cómo ejecutarlo en local

### Requisitos previos
- **Docker Desktop** instalado y en ejecución
- **JDK 25**

### Pasos

**1. Levantar la base de datos**

En el directorio raíz del repositorio (donde está el `docker-compose.yml`) ejecuta:

```bash
docker-compose up -d postgres-zzz
```

Esto arranca un contenedor PostgreSQL con la base de datos `zenless_db` ya configurada.

**2. Cargar los datos en la base de datos (solo la primera vez)**

Abre el fichero `src/main/resources/application.properties` y cambia esta línea:

```properties
# Antes
spring.sql.init.mode=never

# Cámbialo a
spring.sql.init.mode=always
```

Esto hará que al arrancar el backend por primera vez ejecute automáticamente el fichero `data.sql` con todos los datos del juego (agentes, W-Engines, Bangboos, etc.).

> ⚠️ Después del primer arranque, vuelve a ponerlo a `never` para evitar que intente reinsertar los datos en cada reinicio.

**3. Arrancar el backend**

Desde esta carpeta (`backend/`):

```bash
# Windows
mvnw.cmd spring-boot:run

# Linux / macOS
./mvnw spring-boot:run
```

La API estará disponible en `http://localhost:8080`.

> La primera vez que arranque, Maven descargará las dependencias automáticamente.

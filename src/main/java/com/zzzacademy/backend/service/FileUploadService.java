package com.zzzacademy.backend.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.UUID;
import java.util.Arrays;
import java.util.List;

@Service
public class FileUploadService {

    private final Path fileStorageLocation;

    public FileUploadService(@Value("${file.upload-dir:uploads/}") String uploadDir) {
        this.fileStorageLocation = Paths.get(uploadDir).toAbsolutePath().normalize();

        try {
            Files.createDirectories(this.fileStorageLocation);
        } catch (Exception ex) {
            throw new RuntimeException("No se pudo crear el directorio donde se guardarán los archivos subidos.", ex);
        }
    }

    public String storeFile(MultipartFile file) {
        // Normaliza el nombre del archivo
        String originalFileName = StringUtils.cleanPath(file.getOriginalFilename());

        try {
            // Check if the file's name contains invalid characters
            if (originalFileName.contains("..")) {
                throw new RuntimeException("Lo siento! El nombre de archivo contiene una ruta inválida " + originalFileName);
            }

            // Validar tipo de archivo (MIME Type)
            String contentType = file.getContentType();
            List<String> allowedTypes = Arrays.asList("image/jpeg", "image/png", "image/webp", "image/gif");
            if (contentType == null || !allowedTypes.contains(contentType.toLowerCase())) {
                throw new RuntimeException("Tipo de archivo no permitido. Solo se admiten imágenes (JPG, PNG, WEBP, GIF).");
            }

            // Generamos un nombre único para evitar sobreescribir imágenes con el mismo nombre
            String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
            String newFileName = UUID.randomUUID().toString() + fileExtension;

            // Copy file to the target location (Replacing existing file with the same name)
            Path targetLocation = this.fileStorageLocation.resolve(newFileName);
            Files.copy(file.getInputStream(), targetLocation, StandardCopyOption.REPLACE_EXISTING);

            return newFileName;
        } catch (IOException ex) {
            throw new RuntimeException("No se pudo guardar el archivo " + originalFileName + ". Por favor inténtalo de nuevo!", ex);
        }
    }
}

package com.zzzacademy.backend.security;

import com.zzzacademy.backend.model.Usuario;
import com.zzzacademy.backend.model.enums.RolUsuario;
import com.zzzacademy.backend.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
public class DatabaseSeeder implements CommandLineRunner {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void run(String... args) throws Exception {
        // Verificar si ya existe el usuario administrador
        if (!usuarioRepository.existsByEmail("admin@zzzacademy.com")) {
            Usuario admin = new Usuario();
            admin.setEmail("admin@zzzacademy.com");
            admin.setPassword(passwordEncoder.encode("admin123"));
            admin.setRol(RolUsuario.ADMIN);
            admin.setFechaCreacion(LocalDateTime.now());
            
            usuarioRepository.save(admin);
            System.out.println("========================================================");
            System.out.println("CREADO USUARIO ADMINISTRADOR POR DEFECTO:");
            System.out.println("Email: admin@zzzacademy.com");
            System.out.println("Password: admin123");
            System.out.println("========================================================");
        } else {
            // Si ya existe, asegurarse de que sigue siendo ADMIN
            usuarioRepository.findByEmail("admin@zzzacademy.com").ifPresent(admin -> {
                if (admin.getRol() != RolUsuario.ADMIN) {
                    admin.setRol(RolUsuario.ADMIN);
                    usuarioRepository.save(admin);
                    System.out.println("========================================================");
                    System.out.println("ROL DE ADMINISTRADOR RESTAURADO PARA: admin@zzzacademy.com");
                    System.out.println("========================================================");
                }
            });
        }
    }
}

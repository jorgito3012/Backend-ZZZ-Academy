package com.zzzacademy.backend.controller;

import com.zzzacademy.backend.model.Agente;
import com.zzzacademy.backend.model.WEngine;
import com.zzzacademy.backend.model.DiscoSet;
import com.zzzacademy.backend.model.Bangboo;
import com.zzzacademy.backend.repository.AgenteRepository;
import com.zzzacademy.backend.repository.WEngineRepository;
import com.zzzacademy.backend.repository.DiscoSetRepository;
import com.zzzacademy.backend.repository.BangbooRepository;
import com.zzzacademy.backend.service.FileUploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/admin")
public class AdminController {

    @Autowired
    private FileUploadService fileUploadService;
    
    @Autowired
    private AgenteRepository agenteRepository;

    @Autowired
    private WEngineRepository wEngineRepository;

    @Autowired
    private DiscoSetRepository discoSetRepository;

    @Autowired
    private BangbooRepository bangbooRepository;

    // 1. SUBIDA DE IMÁGENES
    @PostMapping("/upload-image")
    public ResponseEntity<Map<String, String>> uploadImage(@RequestParam("file") MultipartFile file) {
        String fileName = fileUploadService.storeFile(file);

        // Generamos la URL completa que el navegador podrá usar para ver la imagen
        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/uploads/")
                .path(fileName)
                .toUriString();

        Map<String, String> response = new HashMap<>();
        response.put("fileName", fileName);
        response.put("url", fileDownloadUri);

        return ResponseEntity.ok(response);
    }

    // 2. CREACIÓN DE NUEVOS AGENTES
    @PostMapping("/agentes")
    public ResponseEntity<Agente> createAgente(@RequestBody Agente agente) {
        Agente savedAgente = agenteRepository.save(agente);
        return ResponseEntity.ok(savedAgente);
    }

    @PutMapping("/agentes/{id}")
    public ResponseEntity<Agente> updateAgente(@PathVariable Long id, @RequestBody Agente agente) {
        return agenteRepository.findById(id)
                .map(existingAgent -> {
                    agente.setId(id);
                    return ResponseEntity.ok(agenteRepository.save(agente));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    // 3. CREACIÓN DE NUEVOS W-ENGINES
    @PostMapping("/wengines")
    public ResponseEntity<WEngine> createWEngine(@RequestBody WEngine wengine) {
        WEngine savedWEngine = wEngineRepository.save(wengine);
        return ResponseEntity.ok(savedWEngine);
    }

    // 4. CREACIÓN DE NUEVOS SETS DE DISCOS
    @PostMapping("/discosets")
    public ResponseEntity<DiscoSet> createDiscoSet(@RequestBody DiscoSet discoSet) {
        DiscoSet savedDisco = discoSetRepository.save(discoSet);
        return ResponseEntity.ok(savedDisco);
    }

    // 5. CREACIÓN DE NUEVOS BANGBOOS
    @PostMapping("/bangboos")
    public ResponseEntity<Bangboo> createBangboo(@RequestBody Bangboo bangboo) {
        Bangboo savedBangboo = bangbooRepository.save(bangboo);
        return ResponseEntity.ok(savedBangboo);
    }
}

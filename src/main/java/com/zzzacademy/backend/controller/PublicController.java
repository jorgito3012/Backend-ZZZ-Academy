package com.zzzacademy.backend.controller;

import com.zzzacademy.backend.model.Agente;
import com.zzzacademy.backend.model.Bangboo;
import com.zzzacademy.backend.model.DiscoSet;
import com.zzzacademy.backend.model.WEngine;
import com.zzzacademy.backend.repository.AgenteRepository;
import com.zzzacademy.backend.repository.BangbooRepository;
import com.zzzacademy.backend.repository.DiscoSetRepository;
import com.zzzacademy.backend.repository.WEngineRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/public")
public class PublicController {

    @Autowired
    private AgenteRepository agenteRepository;

    @Autowired
    private WEngineRepository wEngineRepository;

    @Autowired
    private BangbooRepository bangbooRepository;

    @Autowired
    private DiscoSetRepository discoSetRepository;

    @GetMapping("/agents")
    public ResponseEntity<List<Agente>> getAllAgents() {
        return ResponseEntity.ok(agenteRepository.findAll());
    }

    @GetMapping("/wengines")
    public ResponseEntity<List<WEngine>> getAllWEngines() {
        return ResponseEntity.ok(wEngineRepository.findAll());
    }

    @GetMapping("/bangboos")
    public ResponseEntity<List<Bangboo>> getAllBangboos() {
        return ResponseEntity.ok(bangbooRepository.findAll());
    }

    @GetMapping("/discosets")
    public ResponseEntity<List<DiscoSet>> getAllDiscoSets() {
        return ResponseEntity.ok(discoSetRepository.findAll());
    }
}

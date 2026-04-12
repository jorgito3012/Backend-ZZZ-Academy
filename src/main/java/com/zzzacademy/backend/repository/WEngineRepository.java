package com.zzzacademy.backend.repository;

import com.zzzacademy.backend.model.WEngine;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WEngineRepository extends JpaRepository<WEngine, Long> {
}

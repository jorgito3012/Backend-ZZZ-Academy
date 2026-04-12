package com.zzzacademy.backend.repository;

import com.zzzacademy.backend.model.DiscoSet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DiscoSetRepository extends JpaRepository<DiscoSet, Long> {
}

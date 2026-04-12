package com.zzzacademy.backend.repository;

import com.zzzacademy.backend.model.Bangboo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BangbooRepository extends JpaRepository<Bangboo, Long> {
}

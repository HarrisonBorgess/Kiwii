package com.uu.kiwii.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.uu.kiwii.model.Rm;

@Repository
public interface RmRepository extends JpaRepository<Rm, String> {

    @Query(value = "SELECT EXISTS(SELECT 1 FROM rm WHERE id = ?1)", nativeQuery = true)
    boolean verifyRm(String id);

    Optional<Rm> findById(String id);

    @Query(value = "SELECT EXISTS(SELECT 1 FROM rm WHERE id = ?1 AND subject_id = ?2)", nativeQuery = true)
    boolean verifySubjectInRm(String rm, String id);
}
package com.all._ktgk.Repository;

import com.all._ktgk.Entity.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PatientRepository extends JpaRepository<Patient, Integer> {
    public Long countById(Integer id);
    @Query("SELECT p FROM Patient p WHERE p.Fullname LIKE %?1%")
    List<Patient> search(String keyword);
}

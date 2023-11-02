package com.all._ktgk.Service;

import com.all._ktgk.Entity.Patient;
import com.all._ktgk.Exception.PatientNotFoundException;
import com.all._ktgk.Repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PatientService {
    @Autowired
    private PatientRepository patientRepo;
    public List<Patient> listAll() {
        return (List<Patient>) patientRepo.findAll();
    }

    public void save(Patient patient) {
        patientRepo.save(patient);
    }

    public Patient get(Integer id) throws PatientNotFoundException {
        Optional<Patient> result = patientRepo.findById(id);
        if (result.isPresent()) {
            return result.get();
        }
        throw new PatientNotFoundException("Could not find any patients with ID " + id);
    }

    public void delete(Integer id) throws PatientNotFoundException {
        Long count = patientRepo.countById(id);
        if (count == null || count == 0) {
            throw new PatientNotFoundException("Could not find any patients with ID " + id);
        }
        patientRepo.deleteById(id);
    }

    public List<Patient> search(String keyword) {
        if (keyword != null) {
            return patientRepo.search(keyword);
        }
        return (List<Patient>) patientRepo.findAll();
    }

    public List<Patient> searchs(String keyword) {
        return patientRepo.search(keyword);
    }
}

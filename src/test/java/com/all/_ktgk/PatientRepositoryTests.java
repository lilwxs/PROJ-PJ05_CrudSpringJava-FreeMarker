package com.all._ktgk;

import com.all._ktgk.Entity.Patient;
import com.all._ktgk.Repository.PatientRepository;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import java.util.Optional;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(false)
public class PatientRepositoryTests {
    @Autowired
    private PatientRepository patientRepository;

    @Test
    public void testCreatePatient() {
        Patient patient = new Patient();
        patient.setFullname("Nguyễn Văn Test");
        patient.setSymptom("Đau Tay");
        patient.setMedicalId("23512463");

        Patient savedPatient = patientRepository.save(patient);

        Assertions.assertThat(savedPatient).isNotNull();
        Assertions.assertThat(savedPatient.getId()).isGreaterThan(0);
    }

    @Test
    public void testListAllPatients() {
        Iterable<Patient> patients = patientRepository.findAll();
        Assertions.assertThat(patients).hasSizeGreaterThan(0);

        for (Patient patient : patients) {
            System.out.println(patient);
        }
    }

    @Test
    public void testUpdatePatient() {
        Integer patientId = 1;
        Optional<Patient> optionalPatient = patientRepository.findById(patientId);
        Patient patient = optionalPatient.get();
        patient.setFullname("Nguyễn Văn B");
        patient.setSymptom("Đau bụng");
        patient.setMedicalId("123456789");

        patientRepository.save(patient);

        Patient updatedPatient = patientRepository.findById(patientId).get();
        Assertions.assertThat(updatedPatient.getFullname()).isEqualTo("Nguyễn Văn B");
    }

    @Test
    public void testGet() {
        Integer patientId = 1;
        Optional<Patient> optionalPatient = patientRepository.findById(patientId);
        Assertions.assertThat(optionalPatient).isPresent();
        System.out.println(optionalPatient.get());
    }

    @Test
    public void testCountById() {
        Integer id = 1;
        Long countById = patientRepository.countById(id);
        Assertions.assertThat(countById).isNotNull().isGreaterThan(0);

        System.out.println("Count: " + countById);
    }

    @Test
    public void testDeletePatient() {
        Integer patientId = 2;
        patientRepository.deleteById(patientId);

        Optional<Patient> optionalPatient = patientRepository.findById(patientId);
        Assertions.assertThat(optionalPatient).isNotPresent();
    }

}

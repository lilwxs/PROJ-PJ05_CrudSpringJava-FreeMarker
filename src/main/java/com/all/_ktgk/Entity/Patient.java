package com.all._ktgk.Entity;

import jakarta.persistence.*;
import org.apache.commons.codec.digest.DigestUtils;

@Entity
@Table(name = "patient")
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;

    @Column(name = "Fullname")
    private String Fullname;

    @Column(name = "Symptom")
    private String Symptom;

    @Column(name = "MedicalId")
    private String MedicalId;

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String fullname) {
        Fullname = fullname;
    }

    public String getSymptom() {
        return Symptom;
    }

    public void setSymptom(String symptom) {
        Symptom = symptom;
    }

    public String getMedicalId() {
        return MedicalId;
    }

    public void setMedicalId(String medicalId) {
        MedicalId = DigestUtils.sha256Hex(medicalId);
    }

    @Override
    public String toString() {
        return "Patient{" +
                "Id=" + Id +
                ", Fullname='" + Fullname + '\'' +
                ", Symptom='" + Symptom + '\'' +
                ", MedicalId='" + MedicalId + '\'' +
                '}';
    }
}

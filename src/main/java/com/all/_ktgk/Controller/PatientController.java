package com.all._ktgk.Controller;

import com.all._ktgk.Entity.Patient;
import com.all._ktgk.Service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class PatientController {
    @Autowired
    private PatientService patientServ;

    @GetMapping("/allPatients")
    public String listPatients(Model model, @Param("keyword") String keyword) {
        List<Patient> listPatients = patientServ.listAll();
        if (keyword != null) {
            listPatients = patientServ.searchs(keyword);
        }
        model.addAttribute("listPatients", listPatients);
        model.addAttribute("pageTitle", "Patients");
        return "patient_ftl/patient_list_all";
    }

    @GetMapping("/patients/new")
    public String showNewForm(Model model) {
        model.addAttribute("patient", new Patient());
        model.addAttribute("pageTitle", "Add New Patient");
        return "patient_ftl/patient_form";
    }

    @PostMapping("/patients/save")
    public String savePatient(Patient patient, RedirectAttributes ra) {
        patientServ.save(patient);
        ra.addFlashAttribute("message", "The patient has been saved successfully.");
        return "redirect:/allPatients";
    }

    @GetMapping("/patients/edit/{id}")
    public String editPatient(@PathVariable("id") Integer id, Model model, RedirectAttributes ra) {
        try {
            Patient patient = patientServ.get(id);
            model.addAttribute("patient", patient);
            model.addAttribute("pageTitle", "Edit Patient (ID: " + id + ")");
            return "patient_ftl/patient_form";
        } catch (Exception e) {
            ra.addFlashAttribute("message", e.getMessage());
            return "redirect:/allPatients";
        }
    }

    @GetMapping("/patients/delete/{id}")
    public String deletePatient(@PathVariable("id") Integer id, RedirectAttributes ra) {
        try {
            patientServ.delete(id);
            ra.addFlashAttribute("message", "The patient ID " + id + " has been deleted successfully.");
        } catch (Exception e) {
            ra.addFlashAttribute("message", e.getMessage());
        }
        return "redirect:/allPatients";
    }
}

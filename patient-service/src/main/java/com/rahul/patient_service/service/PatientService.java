package com.rahul.patient_service.service;

import com.rahul.patient_service.dto.PatientRequestDTO;
import com.rahul.patient_service.dto.PatientResponseDTO;
import com.rahul.patient_service.exception.EmailAlreadyExistsException;
import com.rahul.patient_service.mapper.PatientMapper;
import com.rahul.patient_service.model.Patient;
import com.rahul.patient_service.repository.PatientRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientService {
    private PatientRepository patientRepository;

    //This is called Dependency injection
    public PatientService(PatientRepository thepatientRepository) {
        this.patientRepository = thepatientRepository;
    }

    public List<PatientResponseDTO> getPatients(){
        List<Patient> patients = patientRepository.findAll();
        return patients.stream().map(PatientMapper::toDTO).toList();
    }

    public PatientResponseDTO createPatient(PatientRequestDTO patientRequestDTO){
        if(patientRepository.existsByEmail(patientRequestDTO.getEmail())){
            throw new EmailAlreadyExistsException("A patient is allready exist :"+patientRequestDTO.getEmail());
        }
        Patient patient = patientRepository.save(PatientMapper.toModel(patientRequestDTO));
        return PatientMapper.toDTO(patient);
    }
}

package com.uu.kiwii.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uu.kiwii.model.Subject;
import com.uu.kiwii.repository.SubjectRepository;

@Service
public class SubjectService {
    
    @Autowired
    private SubjectRepository subjectRepository;

    public void save(Subject subject) {
        subjectRepository.save(subject);
    }

    public Subject findById(String id) {
        Optional<Subject> optionalSubject = subjectRepository.findById(id);
        if (optionalSubject.isPresent()) {
            return optionalSubject.get();
        }
        return null;
    }

    public List<Subject> findAll(){
        return subjectRepository.findAll();
    }

    public boolean verifyRmInSubject(String currentRm, String subjectId) {
        return subjectRepository.verifyRmInSubject(currentRm, subjectId);
    }
}

package com.project.service;

import com.project.entity.Hire;

public interface HireService {
	boolean hireRequest(Hire hire);

	boolean hireCancelation(int hireId);

	Hire getHireRequest(int tutorId);

	Hire getHireStatus(String email);

	Hire getHireStatus(int studentId);

}

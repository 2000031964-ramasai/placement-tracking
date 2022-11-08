package com.sdp.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sdp.entity.Job;

public interface JobRepo extends JpaRepository<Job, Long>{

}

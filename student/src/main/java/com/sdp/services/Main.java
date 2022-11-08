package com.sdp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.sdp.dao.JobApplicationsRepo;

import com.sdp.dao.StudentRepo;
import com.sdp.entity.GetAppliedStudents;
import com.sdp.entity.GetJobOffers;
import com.sdp.entity.JobApplications;
import com.sdp.entity.JobOffers;
import com.sdp.entity.Student;
@Service

public class Main {
	@Autowired
	public StudentRepo repo;
	@Autowired
	RestTemplate restTemplate;
	@Autowired
	public JobApplicationsRepo arepo;
	public GetAppliedStudents getAllstudents()
	{
		GetAppliedStudents gas=new GetAppliedStudents();
		List<Student> l=repo.findAll();
		gas.setL(l);
		return gas;
	}
	public Student checkStudentLogin(String id,String pass)
	{
		Student s=repo.checkLogin(id, pass);
		return s;
	}
	public ModelAndView applyToJob(long jobid,String userID)
	{
		ModelAndView mv = new ModelAndView();
		List<JobApplications> jl=arepo.findAll();
		for(int i=0;i<arepo.count();i++)
		{
			JobApplications jp = jl.get(i);
			if(jp.getJobid()==jobid && jp.getUserID().equals(userID))
			{
				mv.addObject("res","Already applied!!");
				  mv.setViewName("exception.jsp");
				  return mv;
			}
		}
				
		JobApplications j=new JobApplications();
		j.setJobid(jobid);
		j.setUserID(userID);
		arepo.save(j);
		mv.setViewName("result.jsp");
		return mv;
	}
	public GetJobOffers getJobOffList() {
		GetJobOffers g=restTemplate.getForObject("http://localhost:9091/getAllJobs", GetJobOffers.class);
		return g;
	}
	public GetJobOffers get()
	{
		System.out.println("beforrestcall");
		GetJobOffers j=restTemplate.getForObject("http://localhost:9091/getAllJobs", GetJobOffers.class);
		//System.out.println(l.size()+"  ---- "+l.get(0).getPostedbyusername());
		
		return j;
	}
	public List<JobApplications> getAppliedStudentsForJob(long jobid) {
		List<JobApplications> j=arepo.getAppliedStudents(jobid);
		return j;
	}
	public Student updateStudentData(Student s) 
	  {
	    return repo.save(s);
	  }
	
	
	
	 
	
	

}

package com.sdp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sdp.entity.GetAppliedStudents;
import com.sdp.entity.GetJobOffers;
import com.sdp.entity.Job;
import com.sdp.service.RecruiterService;
@RestController

public class RecruiterController {

	@Autowired
	RecruiterService rs;

	
	String username=null,id=null;
	
	@RequestMapping("/")
	public ModelAndView main()
	{
		System.out.println("in main method in recruiter service");
	ModelAndView mv = new ModelAndView();
		mv.setViewName("main.jsp");
		return mv;
	}
	
	@RequestMapping("/home")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cmplgn.jsp");
		return mv;
	}
	
	@RequestMapping("reclogin")
	public ModelAndView RecLogin(String username,String pass)
	{
		return rs.RecLogin(username, pass);
	}
	@RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request){
		
        return rs.logut(request);
    }
	
	
	@RequestMapping("/addJob")
	public ModelAndView addJobs(Job j)
	{
		return rs.addJob(j);
	}
	@RequestMapping("/deleteJob")
	public ModelAndView deleteJobs(Job j)
	{
		return rs.deleteJob(j);
	}
	
	@RequestMapping("/viewjobs")
	public ModelAndView viewJobs()
	{
		return rs.viewJobs();
	}
	
	@GetMapping("/getAllJobs")
	  public GetJobOffers getAllJobs()
	  {
	    List<Job> l=rs.getAllJobs();
	    System.out.println(l.size());
	    GetJobOffers getJobOffers=new GetJobOffers();
	    getJobOffers.setL(l);
	    return getJobOffers;
	  }
	@RequestMapping("getAppliedStudents")
	public ModelAndView showAppliedStudents(Job j)
	{
		System.out.println(j.getJobid());
		ModelAndView m=new ModelAndView();
		GetAppliedStudents g=rs.showAppliedStudents(j.getJobid());
		
		m.addObject("resultclass", g);
		m.setViewName("viewAppliedStudentPage.jsp");
		return m;
	}
	
	
}

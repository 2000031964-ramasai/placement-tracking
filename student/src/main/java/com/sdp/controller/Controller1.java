package com.sdp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sdp.dao.JobApplicationsRepo;
import com.sdp.dao.StudentRepo;
import com.sdp.entity.GetAppliedStudents;
import com.sdp.entity.GetJobOffers;
import com.sdp.entity.JobApplications;
import com.sdp.entity.JobOffers;
import com.sdp.entity.Student;
import com.sdp.services.Main;

@RestController
public class Controller1 {
	@Autowired
	Main main = new Main();
	@Autowired
	StudentRepo repo;

	@Autowired
	HttpSession session;
	@Autowired
	JobApplicationsRepo applicationRepo;
	String username = null, id = null;

	@GetMapping("/getAppliedStudents/{jobID}")
	public GetAppliedStudents getAppliedStudentsForJob(@PathVariable("jobID") long jobid) {
		List<JobApplications> j = main.getAppliedStudentsForJob(jobid);
		List<Student> studentData = repo.findAll();
		List<Student> applieddata = new ArrayList<Student>();
		for (JobApplications ap : j) {
			String temp = ap.getUserID();
			for (Student s : studentData) {
				System.out.println(s.getUserID());
				if (temp.equals(s.getUserID())) {
					applieddata.add(s);
				}
			}
		}

		GetAppliedStudents g = new GetAppliedStudents();
		g.setL(applieddata);
		return g;
	}

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView m = new ModelAndView();

		m.setViewName("main.jsp");
		return m;
	}

	@RequestMapping("studentreg")
	public ModelAndView addStudent(Student s) {
		ModelAndView m = new ModelAndView();
		repo.save(s);
		String re = "added";
		// m.addObject(re);
		m.addObject("res", re);

		m.setViewName("result.jsp");
		return m;
	}

	@RequestMapping("studentlogincheck")
	public ModelAndView Studentlogin(Student s) {
		ModelAndView m = new ModelAndView();

		Student stu = main.checkStudentLogin(s.getUserID(), s.getPassword());
		if (stu != null) {
			m.addObject("Student", stu);
			m.setViewName("stdindex.jsp");

			this.username = s.getUserID();
			id = session.getId();
			session.setAttribute("loggedInUser_userName", username);
			return m;
		}
		m.setViewName("stdlgn.jsp");
		return m;
	}

	@RequestMapping("getJobOffers")
	public ModelAndView getJobOffers() {
		ModelAndView m = new ModelAndView();
		m.setViewName("viewJobOffers.jsp");
		m.addObject("list", main.getJobOffList());
		return m;
	}

	@RequestMapping("applyJobController")
	public ModelAndView applyJobControllerController(Student s, JobOffers j) {
		return main.applyToJob(j.getJobid(), s.getUserID());
		
		
	}

	@RequestMapping("/applyjob")
	public ModelAndView applyJobs() {
		ModelAndView m = new ModelAndView();
		GetJobOffers g = main.get();
		List<JobOffers> l = g.getL();
		System.out.println(l.size() + "  ---- " + l.get(0).getPostedbyusername());
		m.addObject("list", l);
		m.setViewName("applyJobs.jsp");
		return m;
	}

	@RequestMapping("viewallstudents")
	public ModelAndView viewallstudents() {
		ModelAndView m = new ModelAndView();
		List<Student> l = repo.findAll();
		m.addObject("list", l);
		m.setViewName("veiwstudent.jsp");
		return m;
	}

	@RequestMapping("/logout1")
    public ModelAndView logout(HttpServletRequest request){
	ModelAndView mav = new ModelAndView();
    HttpSession session = request.getSession(false);
    
      if (session != null) {
          session.invalidate();
      }
      
      mav.setViewName("stdlgn.jsp");
        return mav;
    }

	@RequestMapping("updateStudentData")
	public ModelAndView updateStudentData(Student s) {
		ModelAndView m = new ModelAndView();
		s = main.updateStudentData(s);
		m.addObject("loggedInUser_userName", s.getCollegeID());
		m.setViewName("stdindex.jsp");
		return m;
	}
	
	
	@RequestMapping("/profile")
	public ModelAndView stdProfile(Student s)
	{
		ModelAndView mv = new ModelAndView();
		 Student sp = repo.findById(username).orElse(null);
		 
		 mv.addObject("profile",sp);
		 //mv.addObject("uname", username);
		 mv.setViewName("stdprofile.jsp");
		 return mv;
	}
	
	@RequestMapping("/edit")
	public ModelAndView edit(Student s)
	{
		ModelAndView mv = new ModelAndView();
		 Student sp = repo.findById(username).orElse(null);
		 session.setAttribute("loggedInUser_userName", username);
		 mv.addObject("profile",sp);
		 
		 mv.setViewName("updProfile.jsp");
		 return mv;
	}
	
	@RequestMapping("/uptdProfile")
	public ModelAndView editProfile(Student s)
	{
		ModelAndView mv = new ModelAndView();		
		 repo.save(s);
		 mv.setViewName("stdindex.jsp");
		 return mv;
	}
	
	
	
}
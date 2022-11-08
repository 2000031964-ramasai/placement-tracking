package com.sdp.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.exc.StreamReadException;
import com.fasterxml.jackson.databind.DatabindException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sdp.dao.PORepository;
import com.sdp.dao.RecruiterIntRepo;
import com.sdp.dao.StudentRepo;
import com.sdp.entity.PO;
import com.sdp.entity.Recruiter;
import com.sdp.entity.Student;

@Service
public class POService {
  @Autowired
  private PORepository porep;

  @Autowired
  RecruiterIntRepo repo;
  @Autowired
  StudentRepo studentRepo;
  
  
  
  
  
  public String OTP1=null;
  @Autowired
  private EmailSenderService senderService;
  public ModelAndView OTPCheck(String OTP) {
    
    ModelAndView mav = new ModelAndView();
    
    if(OTP1.equals(OTP)) {
      mav.setViewName("polgnsuccess.jsp");
      
      return mav;
    }
    
    mav.setViewName("polgn.jsp");
    return mav;
  }
  

  public ModelAndView emailCheck(PO p) {
    ModelAndView mv = new ModelAndView();
    if(p.getPoEmail().equals("mahankali08ramasai@gmail.com"))
    {
    	Random random = new Random();
        StringBuilder sb = new StringBuilder();    
        sb.append(random.nextInt(50000 - 10000) + 10000);//high: 50K | low: 10K
         OTP1=sb.toString();
        senderService.sendEmail("mahankali08ramasai@gmail.com",//to email 
            "OTP for PO login", 
            OTP1);
    	mv.setViewName("polgn.jsp");
    	return mv;
    }
      mv.setViewName("pohome.jsp");
    return mv;    
  }
  

  
  public ModelAndView addRect(Recruiter r)
  {
	  ModelAndView mv = new ModelAndView();
	  List<Recruiter> rl = repo.findAll();
	  
	  for(int i=0;i<repo.count();i++)
	  {
		  Recruiter rp = rl.get(i);
		  if(r.getUsername().equals(rp.getUsername()))
		  {
			  mv.addObject("res","User already exists!!");
			  mv.setViewName("exception.jsp");
			  return mv;
		  }
		   
	  }
    
    mv.setViewName("polgnsuccess.jsp");
    repo.save(r);
    return mv;
  }
  
  public ModelAndView deleteRect(String username)
  {
 
    ModelAndView mv = new ModelAndView();
    
	  List<Recruiter> rl = repo.findAll();
	  
	  for(int i=0;i<repo.count();i++)
	  {
		  Recruiter rp = rl.get(i);
		  if(username.equals(rp.getUsername()))
		  {
			  repo.deleteByUsername(username);
			  mv.setViewName("polgnsuccess.jsp");
			   return mv;			
		  }
		   
	  }
	  mv.addObject("res","User Doesnot exists!!");
	  mv.setViewName("exception.jsp");
	  return mv;
    
    
  }

  public ModelAndView deleteStudent(Student s) {
	  ModelAndView mv = new ModelAndView();
	    
	  List<Student> sl = studentRepo.findAll();
	  
	  for(int i=0;i<studentRepo.count();i++)
	  {
		  Student sp = sl.get(i);
		  if(sp.getUserID().equals(sp.getUserID()))
		  {
			  studentRepo.deleteById(s.getUserID());
			  mv.setViewName("polgnsuccess.jsp");
			   return mv;			
		  }
		   
	  }
	  mv.addObject("res","User Doesnot exists!!");
	  mv.setViewName("exception.jsp");
	  return mv;
    
  }

  public ModelAndView addStudent(Student s) {
	  ModelAndView mv = new ModelAndView();
	  List<Student> sl = studentRepo.findAll();
	  
	  for(int i=0;i<studentRepo.count();i++)
	  {
		  Student sp = sl.get(i);
		  if(s.getUserID().equals(sp.getUserID()))
		  {
			  mv.addObject("res","User already exists!!");
			  mv.setViewName("exception.jsp");
			  return mv;
		  }
		   
	  }
    
    mv.setViewName("polgnsuccess.jsp");
    studentRepo.save(s);
    return mv;
  }
  public ModelAndView viewStudents()
	{
	  
		ModelAndView mv=new ModelAndView();
	    List<Student> l=studentRepo.findAll();
	    
	    if(l.isEmpty())
	    {
	    	mv.addObject("res","No Students are exist!!");
			  mv.setViewName("exception.jsp");
			  return mv;
	    }
	    mv.addObject("student", l);
	    mv.setViewName("viewStudents.jsp");
	    return mv;
	}
  
  public ModelAndView viewProf()
  {
	  ArrayList<String> plt = new ArrayList<String>();
	  plt.add("codechef");
	  plt.add("codeforces");
	  plt.add("leetcode");
	  plt.add("spoj");
	  plt.add("interviewbit");
	  
	  
	  ModelAndView mv = new ModelAndView();
	  List<Student> st = studentRepo.findAll();
	  ArrayList<JsonNode[]> codechef = new ArrayList<JsonNode[]>();
	  ArrayList<JsonNode[]> codeforces = new ArrayList<JsonNode[]>();
	  ArrayList<JsonNode[]> leetcode = new ArrayList<JsonNode[]>();
	  ArrayList<JsonNode[]> spoj = new ArrayList<JsonNode[]>();
	  ArrayList<JsonNode[]> interviewbit = new ArrayList<JsonNode[]>();
	  for(int j=0;j<plt.size();j++)
	  {		  
		  if(plt.get(j).equals("codeforces"))
		  {
			  JsonNode[] rating = new JsonNode[(int) studentRepo.count()];
			  JsonNode[] rank = new JsonNode[(int) studentRepo.count()];
			  
			  
			  for(int i=0;i<studentRepo.count();i++)
			  {
				  
					  Student sl = st.get(i);
					  String url = "https://competitive-coding-api.herokuapp.com/api/"+plt.get(j)+"/"+sl.getCodeforces();
					  try 
					  {									  					  
						   	JsonNode node = POService.get(url);
					        rating[i]=node.get("rating");
					        rank[i]=node.get("rank");			               			        
					  }
					  catch(Exception e)
					  {
						  System.out.println("Excception");
					  }	
			  }
			  codeforces.add(rating);
			  codeforces.add(rank);
			  
			  
		  }
		  
		  else if(plt.get(j).equals("codechef"))
		  {
			  JsonNode[] rating1 = new JsonNode[(int) studentRepo.count()];
			  JsonNode[] rank1 = new JsonNode[(int) studentRepo.count()];
			  
			  
			  for(int i=0;i<studentRepo.count();i++)
			  {
				  
					  Student sl = st.get(i);
					  String url = "https://competitive-coding-api.herokuapp.com/api/"+plt.get(j)+"/"+sl.getCodechef();
					  try 
					  {									  					  
						   	JsonNode node = POService.get(url);
					        rating1[i]=node.get("rating");
					        rank1[i]=node.get("stars");			               			        
					  }
					  catch(Exception e)
					  {
						  System.out.println("Excception");
					  }	
			  }
			  codechef.add(rating1);
			  codechef.add(rank1);
		  }
		  else if(plt.get(j).equals("leetcode"))
		  {
			  JsonNode[] problems = new JsonNode[(int) studentRepo.count()];
			  for(int i=0;i<studentRepo.count();i++)
			  {
				  
					  Student sl = st.get(i);
					  String url = "https://competitive-coding-api.herokuapp.com/api/"+plt.get(j)+"/"+sl.getLeetcode();
					  try 
					  {									  					  
						   	JsonNode node = POService.get(url);
					        problems[i]=node.get("total_problems_solved");
					        		               			        
					  }
					  catch(Exception e)
					  {
						  System.out.println("Excception");
					  }	
			  }
			  codechef.add(problems);			  
		  }
		  else if(plt.get(j).equals("spoj"))
		  {
			  JsonNode[] rank = new JsonNode[(int) studentRepo.count()];
			  JsonNode[] points = new JsonNode[(int) studentRepo.count()];
			  for(int i=0;i<studentRepo.count();i++)
			  {
				  
					  Student sl = st.get(i);
					  String url = "https://competitive-coding-api.herokuapp.com/api/"+plt.get(j)+"/"+sl.getSpoj();
					  try 
					  {									  					  
						   	JsonNode node = POService.get(url);
					        rank[i]=node.get("rank");
					        points[i]=node.get("points");
					        		               			        
					  }
					  catch(Exception e)
					  {
						  System.out.println("Excception");
					  }	
			  }
			  spoj.add(rank);
			  spoj.add(points);
			  
		  }
		  else if(plt.get(j).equals("interviewbit"))
		  {
			  JsonNode[] rank = new JsonNode[(int) studentRepo.count()];
			  JsonNode[] score = new JsonNode[(int) studentRepo.count()];
			  for(int i=0;i<studentRepo.count();i++)
			  {
				  
					  Student sl = st.get(i);
					  String url = "https://competitive-coding-api.herokuapp.com/api/"+plt.get(j)+"/"+sl.getInterviewBit();
					  try 
					  {									  					  
						   	JsonNode node = POService.get(url);
					        rank[i]=node.get("rank");
					        score[i]=node.get("score");
					        		               			        
					  }
					  catch(Exception e)
					  {
						  System.out.println("Excception");
					  }	
			  }
			  spoj.add(rank);
			  spoj.add(score);
			  
		  }
			  
	}
	  	  	

	  mv.addObject("codeforces", codeforces);
	  mv.addObject("codechef", codechef);	
	  mv.addObject("leetcode", leetcode);
	  mv.addObject("spoj", spoj);
	  mv.addObject("interviewbit", interviewbit);
	  mv.addObject("student", st);
	  mv.setViewName("viewProfiles.jsp");
	  return mv;
	  
  }
  public static JsonNode get(String url) throws StreamReadException, DatabindException, MalformedURLException, IOException {
      ObjectMapper mapper = new ObjectMapper();
      JsonNode json = mapper.readTree(new URL(url));
      return json;
  }
  
  
  
  
  
}
package kr.ac.hansung.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.hansung.model.Offer;
import kr.ac.hansung.service.OfferService;

@Controller
public class OfferController {

	@Autowired
	private OfferService offerService; 
	
	@RequestMapping("/offers")
	public String showOffers(Model model) {
		List<Offer> offers = offerService.getCurrent();
		model.addAttribute("offers", offers);
		
		return "offers";
	}
	
	@RequestMapping(value="/detailoffers",  method = RequestMethod.GET)
	public String showDetailOffers(HttpServletRequest httpServletRequest,Model model) {
		
		String year = httpServletRequest.getParameter("year");
		String semester = httpServletRequest.getParameter("semester");
		List<Offer> detailoffers = offerService.getCurrent(year,semester);
		model.addAttribute("detailoffers", detailoffers);
		
		return "detailoffers";
	}
	
	@RequestMapping("/createoffer")
	public String createOffer(Model model) {
		
		model.addAttribute("offer", new Offer());  //꼭 있어야함 중요	
		return "createoffer";
		
	}
	
	//2020년도 1학기 수강신청
	@RequestMapping("/docreate")
	public String docreate(Model model, @Valid Offer offer, BindingResult result )  {
		offer.setYear(2020);
		offer.setSemester(1);
		System.out.println(offer);
		if(result.hasErrors())
		{
			System.out.println("=== web Form data does not validated ===");
			List<ObjectError> errors = result.getAllErrors();
			
			for(ObjectError error :errors) {
				System.out.println(error.getDefaultMessage());
			}
			return "createoffer";
		}
		
		offerService.insert(offer);   //controller -> service -> dao 호출
		
		return "offercreated";
	}
	
	@RequestMapping(value="/dodelete", method = RequestMethod.GET)
	public String deleteOffers(HttpServletRequest httpServletRequest,Model model) {
		String course_code = httpServletRequest.getParameter("course_code");
		System.out.println(course_code);
		offerService.delete(course_code);
		List<Offer> newoffers = offerService.getNewOffer();
		model.addAttribute("newoffers", newoffers);
		return "shownewoffer";
	}
	
	@RequestMapping("/shownewoffer")
	public String showNewOffers(Model model) {
		List<Offer> newoffers = offerService.getNewOffer();
		model.addAttribute("newoffers", newoffers);
		System.out.println(newoffers);
		return "shownewoffer";
	}
	
}

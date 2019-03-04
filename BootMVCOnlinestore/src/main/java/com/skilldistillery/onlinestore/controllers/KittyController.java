package com.skilldistillery.onlinestore.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.data.entities.Kitty;
import com.skilldistillery.onlinestore.data.KittyDAO;

@Controller
public class KittyController {

	@Autowired
	private KittyDAO kittyDAO;

	@RequestMapping(path= {"/", "home.do"}, method = RequestMethod.GET)
	public String index(Model model) {

		model.addAttribute("kitties", kittyDAO.findAll());
		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "catalogue.do", method = RequestMethod.GET)
	public String getAll(Model model) {
		model.addAttribute("kitties", kittyDAO.findAll());
		return "WEB-INF/kitty/showAll.jsp";
	}

	@RequestMapping(path = "getKitty.do",params = "id", method = RequestMethod.GET)
	public ModelAndView getKittyById(int id) {
		System.out.println(id + "   ##########################################################");
		ModelAndView mv = new ModelAndView();

		Kitty kitty = kittyDAO.findKittyById(id);
		System.out.println(kitty+ "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
		if(kitty == null) {
			mv.addObject("id", id);
			mv.setViewName("WEB-INF/error/notFoundError.jsp");
			return mv;
		}else {
			mv.addObject("kitty", kitty);
			mv.setViewName("WEB-INF/kitty/result.jsp");
			return mv;
		}
	
	}

	@RequestMapping(path = "addKittyForm.do")
	public String displayAddKittyForm() {
		return "WEB-INF/kitty/addKittyForm.jsp";
	}

	@RequestMapping(path = "addKitty.do", method = RequestMethod.POST)
	public ModelAndView createFilm(Kitty kitty) {
		ModelAndView mv = new ModelAndView();
		Kitty newCreatedKitty = kittyDAO.createKitty(kitty);
		
		Boolean errorCreateKitty = false;
		if (newCreatedKitty == null) {
			errorCreateKitty = true;
			mv.addObject("newCreatedKitty", newCreatedKitty);
			mv.addObject("errorCreateKitty", errorCreateKitty);
			mv.setViewName("WEB-INF/error/errorPage.jsp");
			return mv;
		} else {
			mv.addObject("newCreatedKitty", newCreatedKitty);
			mv.setViewName("WEB-INF/kitty/result.jsp");
			return mv;
		}

	}

	@RequestMapping(path = "deleteKitty.do", params = "id", method = RequestMethod.POST)
	public ModelAndView deleteKitty(int id) {
		ModelAndView mv = new ModelAndView();
		boolean isSuccessful = kittyDAO.deleteKitty(id);
		mv.addObject("removed", isSuccessful);
		mv.setViewName("WEB-INF/kitty/showAll.jsp");
		if (!isSuccessful) {
			mv.setViewName("WEB-INF/error/errorPage.jsp");
			return mv;
		}
		return mv;
	}
	
	
	@RequestMapping(path = "editKitty.do",params = "id", method = RequestMethod.GET)
	public ModelAndView editKitty( int id) throws SQLException {
		ModelAndView mv = new ModelAndView();
		Kitty kittyObj = kittyDAO.findKittyById(id);
		System.out.println(kittyObj);
		mv.addObject("kitty", kittyObj);
		System.out.println(mv+"@@@@@@@@@@@@@@@@@@@@@@@");
		mv.setViewName("WEB-INF/kitty/editKitty.jsp");

		return mv;
	}
	
	@RequestMapping(path = "saveKitty.do", params = "id", method = RequestMethod.POST)
	public ModelAndView saveKitty(Kitty kitty,int id,   RedirectAttributes redir) throws SQLException {
		ModelAndView mv = new ModelAndView();
		
		Kitty updatedKitty = kittyDAO.saveKitty(kitty, id);
		System.out.println(updatedKitty + "76");
		mv.addObject("updatedKitty", updatedKitty);
		mv.setViewName("WEB-INF/kitty/result.jsp");

		return mv;

	}

}

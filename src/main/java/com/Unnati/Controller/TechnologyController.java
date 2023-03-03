package com.Unnati.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import com.Unnati.bean.TechnologyBean;
import com.Unnati.dao.TechnologyDao;

@Controller
public class TechnologyController {
	
	@Autowired
	TechnologyDao technologyDao;

	
	@GetMapping("/newtechnology")
	public String newTechnology(){
		return "NewTechnology";
	}
	
	@PostMapping("/savetechnology")
	public String saveTechnology(TechnologyBean technologyBean) {
		System.out.println(technologyBean.getTechnologyName());
			technologyDao.addTechnology(technologyBean);
		return "NewTechnology";
	}
	
	@GetMapping("/listtechnology")
	public String listTechnology(Model model) {
		List<TechnologyBean> list = technologyDao.getAllTechnology();
		System.out.println(list);
		model.addAttribute("list",list);
		return "ListTechnology";	
	}
	
	@GetMapping("/deletetechnology/{technologyId}")
	public String deleteTechnology(@PathVariable("technologyId")Integer technologyId) {
		technologyDao.deleteTechnology(technologyId);
		return "redirect:/listtechnology";
	}

}

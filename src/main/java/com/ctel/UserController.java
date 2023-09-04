package com.ctel;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

	@RequestMapping("/userReg")
	public String showRegForm() {
		return "userReg";
	}

	@RequestMapping("/login")
	public String showLoginForm() {
		return "login";
	}

	@Autowired
	UserRepo userDao;

	@RequestMapping("/loginRequest")
	public String login(@RequestParam String password, @RequestParam String phone, User usr, ModelMap m) {
		Optional<User> resUsr = userDao.findById(phone);

		// User resUser = userRepo.findById(password)
		if (resUsr.get().getPassword().equals(password) && resUsr.get().getPhone().equals(phone)) {
			m.addAttribute("msg", resUsr.toString());
			return "home";
		} else if ("cteladmin".equals(password) && "9999999999".equals(phone)) {
			m.addAttribute("msg", "Welcome Admin");
			return "login";
		} else {
			m.addAttribute("msg", "Invalid Phone No or Password");
			return "login";
		}
	}

	// @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	@PostMapping("/saveUser")
	public String save(@ModelAttribute("saveUser") User saveUser, Model model) {
		
		userDao.save(saveUser);
		model.addAttribute("msg", "Saved Successfully");
		return "redirect:/login";
	}

	@RequestMapping("/viewUser")
	public String viewUser(Model m) {
		List<User> userList = (List<User>) userDao.findAll();
		m.addAttribute("list", userList);
		return "viewUserDet";
	}

	@RequestMapping(value="/userEditForm/{phone}", method = RequestMethod.GET)
	// @ResponseBody
	public String edit(@PathVariable String phone, Model m) {
		Optional<User> resUsr = userDao.findById(phone);
		User editUsr= resUsr.get();
		m.addAttribute("command", editUsr);
		return "userEditForm";
	}

	@RequestMapping(value = "/editSave", method = RequestMethod.POST)
	//@PostMapping("/editSave")
	public String editsave(@RequestParam String username, 
						   @RequestParam String password, 
						   @RequestParam String firstname,
						   @RequestParam String lastname, 
						   @RequestParam String email, 
						   @RequestParam String address,
						   @RequestParam String phone, 
						   User usr, ModelMap map) {
		userDao.deleteById(phone);
		User updUser = new User(username, password, firstname, lastname, email, address, phone);
		userDao.save(updUser);
		map.addAttribute("msg", "Updated Successfully");
		//return "redirect:/home";
		return "home";
	}
	
	@GetMapping("/deleteUser/{phone}")
	public String delete(@PathVariable String phone, ModelMap map) {
		userDao.deleteById(phone);
		map.addAttribute("msg", "Deleted Successfully");
		//return "redirect:/home";
		return "home";
	}

}
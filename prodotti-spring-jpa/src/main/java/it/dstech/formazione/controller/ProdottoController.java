package it.dstech.formazione.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import it.dstech.formazione.model.Prodotto;
import it.dstech.formazione.service.ProdottoService;



@Controller
public class ProdottoController {
	
	@Autowired
	private ProdottoService prodottoService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		List<Prodotto> listaProdotti = prodottoService.listAll();
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("listaProdotti", listaProdotti);
		return mav;
	}
	
	@RequestMapping("/nuovo")
	public String newProdottoForm(Model model) {
		Prodotto prodotto = new Prodotto();
		model.addAttribute("prodotto", prodotto);
		return "nuovi_prodotti";
	}
	
	@RequestMapping(value = "/salva", method = RequestMethod.POST)
	public String salvaProdotto(@ModelAttribute("prodotto") Prodotto prodotto) {
		prodottoService.save(prodotto);
		return "redirect:/";
	}
	
	@RequestMapping("/modifica")
	public ModelAndView editProdottoForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("modifica_prodotto");
		Prodotto prodotto = prodottoService.get(id);
		mav.addObject("prodotto", prodotto);
		
		return mav;
	}
	
	@RequestMapping("/cancella")
	public String deleteProductForm(@RequestParam long id) {
		prodottoService.delete(id);
		return "redirect:/";		
	}
	
	@RequestMapping("/cerca")
	public ModelAndView cerca(@RequestParam String parola) {
		List<Prodotto> risultato = prodottoService.search(parola);
		ModelAndView mav = new ModelAndView("cerca_prodotto");
		mav.addObject("risultato", risultato);
		
		return mav;		
	}	

}

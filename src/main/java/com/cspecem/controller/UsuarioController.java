package com.cspecem.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cspecem.model.Profile;
import com.cspecem.model.ProfileTipo;
import com.cspecem.model.Usuario;
import com.cspecem.service.ProfileService;
import com.cspecem.service.UsuarioService;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class UsuarioController extends AbstractController {

	@Autowired
	UsuarioService userService;

	@Autowired
	ProfileService userProfileService;

	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;

	private String confirmarSenha;
	
	/**
	 * Este método irá listar todos os usuários existentes.
	 */
	@RequestMapping(value={"/", "/home"})
	public String started(ModelMap model) {
		model.addAttribute("usuarioLogado", getPrincipal());
		return "index";
	}
	
	@RequestMapping(value = {"/usuarios"}, method = RequestMethod.GET)
	public String listar(ModelMap model) {

		List<Usuario> usuarios = userService.findAllUsers();
		model.addAttribute("usuarios", usuarios);
		model.addAttribute("usuarioLogado", getPrincipal());
		return "usuario/usuarioLista";
	}

	/**
	 * Este método irá fornecer o meio para adicionar um novo usuário.
	 */
	@RequestMapping(value={"/usuario/add"}, method = RequestMethod.GET)
	public String novo(ModelMap model) {
		Usuario usuario = new Usuario();
		model.addAttribute("usuario", usuario);
		model.addAttribute("edit", false);
		model.addAttribute("usuarioLogado", getPrincipal());
		return "usuario/usuarioForm";
	}
	
	
	@RequestMapping(value={"/registro"})
	public String registrar(Model model) {
		Usuario usuario = new Usuario();
		model.addAttribute("usuario", usuario);
		model.addAttribute("edit", false);
		return "publico/usuarioRegistro";
	}

	/**
	 * Este método será chamado no envio do formulário, tratamento de solicitaçãoo POST para salvar usuário no banco de dados.
	 * Ele também valida a entrada do usuário.
	 */
	@RequestMapping(value = { "/usuario/add" }, method = RequestMethod.POST)
	public String salvar(@Valid Usuario usuario, BindingResult result, ModelMap model, ProfileTipo profile) {

		if (result.hasErrors()) {
			return "usuario/usuarioForm";
		}

		/*
		 * Testando a singularidade do campo [ssoID].
		 * Deve ser implementada com anotação @Unique e aplicá-lo no campo [ssoID] da classe model Usuario.
		 * 
		 */
		if (!userService.isUserSSOUnique(usuario.getId(), usuario.getSsoId())) {
			FieldError ssoError = new FieldError("usuario", "ssoId", messageSource.getMessage("unico.usuario",
					new String[] { usuario.getSsoId() }, Locale.getDefault()));
			result.addError(ssoError);
			return "usuario/usuarioForm";
		}

		/*
		if (!usuario.getPassword().equalsIgnoreCase(this.confirmarSenha)) {
			model.addAttribute("msgErro", "Senha confirmada incorretamente.");
			return null;
		}
		*/
		
		//usuario.setUserProfiles(profile.USER);
		userService.saveUser(usuario);

		model.addAttribute("sucesso", "Salvo com sucesso.");
		model.addAttribute("usuarioLogado", getPrincipal());
		
		return "usuario/usuarioRegistroSucesso";
	}

	/**
	 * Este método irá fornecer o meio para atualizar um usuário existente.
	 */
	@RequestMapping(value = { "/edita-usuario-{ssoId}" }, method = RequestMethod.GET)
	public String editar(@PathVariable String ssoId, ModelMap model) {
		Usuario usuario = userService.findBySSO(ssoId);
		model.addAttribute("usuario", usuario);
		model.addAttribute("edit", true);
		model.addAttribute("usuarioLogado", getPrincipal());
		return "usuario/usuarioForm";
	}

	/**
	 * Este método será chamado no envio do formulário, tratamento de solicitação POST para atualizar o usuário no banco de dados.
	 * Ele também valida a entrada do usuário.
	 */
	@RequestMapping(value = { "/edita-usuario-{ssoId}" }, method = RequestMethod.POST)
	public String atualizar(@Valid Usuario usuario, BindingResult result, ModelMap model, @PathVariable String ssoId) {

		if (result.hasErrors()) {
			return "usuario/usuarioForm";
		}

		userService.updateUser(usuario);

		model.addAttribute("sucesso", "Salvo com sucesso.");
		model.addAttribute("usuarioLogado", getPrincipal());
		
		return "usuario/usuarioRegistroSucesso";
	}

	/**
	 * Este método irá apagar um usuário pelo seu valor SSOID.
	 */
	@RequestMapping(value = { "/deleta-usuario-{ssoId}" }, method = RequestMethod.GET)
	public String deletar(@PathVariable String ssoId) {
		userService.deleteUserBySSO(ssoId);
		return "redirect:/usuarios";
	}

	/**
	 * Este método irá fornecer a lista de Perfis
	 */
	@ModelAttribute("roles")
	public List<Profile> initializeProfiles() {
		return userProfileService.findAll();
	}

	/**
	 * Este método manipula redirecionamento acesso negado.
	 */
	@RequestMapping(value = "/acesso-negado", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("usuarioLogado", getPrincipal());
		return "publico/acessoNegado";
	}

	/**
	 * Este método trata as solicitações de login.
	 * Se o usuário estiver iniciado a sessão e tentar logar novamente, será redirecionado para lista de usuários.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
		} else {
			return "redirect:/home";
		}
	}

	/**
	 * Este método trata as solicitações de logout.
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}

	/**
	 * Esse método retorna true se usuário já estiver autenticado.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
		final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authenticationTrustResolver.isAnonymous(authentication);
	}

	public String getConfirmarSenha() {
		return confirmarSenha;
	}

	public void setConfirmarSenha(String confirmarSenha) {
		this.confirmarSenha = confirmarSenha;
	}

}
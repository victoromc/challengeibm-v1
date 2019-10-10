package br.com.challengeibm.control.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.challengeibm.model.business.AlunoBO;
import br.com.challengeibm.model.entities.Aluno;

public class Login implements Tarefa {

	@Override
	public String processarRequest(HttpServletRequest req, HttpServletResponse resp) {

		String rm = req.getParameter("rm");
		String senha = req.getParameter("senha");

		Aluno aluno = new AlunoBO().validarLogin(rm, senha);

		if (aluno != null) {
			HttpSession session = req.getSession();
			System.out.println(rm);
			session.setAttribute("aluno", aluno);
			return "cursos.jsp";
		} else {
			req.setAttribute("erro", "Usuário e/ou Senha não existem.");
			return "erro.jsp";
		}

	}
}

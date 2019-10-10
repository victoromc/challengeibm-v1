package br.com.challengeibm.control.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/controller")
public class ControllerServlet extends HttpServlet {

	private static final long serialVersionUID = -4028928930137790457L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String tarefa = req.getParameter("tarefa");
		tarefa = "br.com.challengeibm.control.web." + tarefa;

		try {
			Class<?> classe = Class.forName(tarefa);
			Tarefa instancia = (Tarefa) classe.newInstance();
			String url = instancia.processarRequest(req, resp);
			req.getRequestDispatcher(url).forward(req, resp);

		} catch (ClassNotFoundException | IllegalAccessException | InstantiationException  e) {
			e.printStackTrace();
		}
	}

}

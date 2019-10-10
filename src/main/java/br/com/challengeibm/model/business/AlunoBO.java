package br.com.challengeibm.model.business;

import br.com.challengeibm.model.dao.AlunoDAO;
import br.com.challengeibm.model.entities.Aluno;

public class AlunoBO {
	public Aluno validarLogin(String rm, String senha) {
		return new AlunoDAO().consultarAluno(rm, senha);
	}

	public int novoAluno(Aluno aluno) {

		if (aluno.getNome().length() > 50 || aluno.getNome().length() <= 3) {
			System.out.println("O nome deve conter no min 3 caracteres e no max 50");
		}

		if (aluno.getSenha().length() < 4 || aluno.getSenha().length() > 20) {
			System.out.println("Senha deve estar entre 4 e 20 caracteres");
		}

		if (aluno.getEmail().length() > 50) {
			System.out.println("Email muito longo");
		}
		if (aluno.getEmail().length() < 3) {
			System.out.println("Email muito curto");
		}
		if (aluno.getEmail().indexOf("@") < 0) {
			System.out.println("@ necessario");
		}
		if (aluno.getRm().length() < 5) {
			System.out.println("RM muito curto");
		}
		if (aluno.getSenha().length() < 3 || aluno.getSenha().length() > 15) {
			System.out.println("Senha deve estar entre 3 e 15 caracteres");
		}

		aluno.setNome(aluno.getNome().toUpperCase());
		
		return 1;

	}
	
	public int atualizarAluno(Aluno aluno) {
		AlunoDAO dao = new AlunoDAO();
		if (dao.consultarAlunoPorRm(aluno.getRm()) != null ) {
			dao.atualizarAluno(aluno);
			System.out.println("atualizado");
			return 1;
		} else {
			System.out.println("nao foi atualizado");
			return 0;
		}
		
	}

}

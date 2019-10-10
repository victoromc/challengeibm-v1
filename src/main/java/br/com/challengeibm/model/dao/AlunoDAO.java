package br.com.challengeibm.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import br.com.challengeibm.model.entities.Aluno;
import br.com.challengeibm.model.services.Conexao;

public class AlunoDAO {
	public Aluno consultarAlunoPorRm(String rm) {

		Aluno aluno = null;

		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn
					.prepareStatement("SELECT * FROM FN_ALUNO WHERE RM_ALUNO = ? AND PW_ALUNO = ?");

			stmt.setString(1, rm);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				rs.getInt("ID_ALUNO");
				rs.getString("NM_ALUNO");
				rs.getString("SOBRENOME_ALUNO");
				rs.getString("CPF_ALUNO");
				rs.getString("RM_ALUNO");
				rs.getString("EMAIL_ALUNO");
				rs.getString("PW_ALUNO");

				aluno = new Aluno();
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return aluno;
	}
	public Aluno consultarAluno(String rm, String senha) {

		Aluno aluno = null;

		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn
					.prepareStatement("SELECT * FROM FN_ALUNO WHERE RM_ALUNO = ? AND PW_ALUNO = ?");

			stmt.setString(1, rm);
			stmt.setString(2, senha);

			ResultSet rs = stmt.executeQuery();

			aluno = new Aluno();
			if (rs.next()) {
				rs.getInt("ID_ALUNO");
				aluno.setNome(rs.getString("NM_ALUNO"));
				rs.getString("SOBRENOME_ALUNO");
				rs.getString("CPF_ALUNO");
				rs.getString("RM_ALUNO");
				rs.getString("EMAIL_ALUNO");
				rs.getString("PW_ALUNO");

				
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return aluno;
	}

	public Aluno cadastrarAluno(Aluno a) {

		Aluno aluno = null;
		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn.prepareStatement(
					"INSERT INTO FN_ALUNO (ID_ALUNO, NM_ALUNO, SOBRENOME_ALUNO, CPF_ALUNO, EMAIL_ALUNO, RM_ALUNO, PW_ALUNO,"
							+ " TELEFONE_ALUNO, CEP, LOGR, NUMERO, BAIRRO, CIDADE, UF ) VALUES (aluno_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			stmt.setString(1, a.getNome());
			stmt.setString(2, a.getSobrenome());
			stmt.setString(3, a.getCpf());
			stmt.setString(4, a.getEmail());
			stmt.setString(5, a.getRm());
			stmt.setString(6, a.getSenha());
			stmt.setString(7, a.getTelefone());
			stmt.setString(8, a.getCep());
			stmt.setString(9, a.getLogr());
			stmt.setString(10, a.getNumero());
			stmt.setString(11, a.getBairro());
			stmt.setString(12, a.getCidade());
			stmt.setString(13, a.getUf());

			stmt.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}

	public Aluno atualizarAluno(Aluno a) {

		Aluno aluno = null;

		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn.prepareStatement(
					"UPDATE FN_ALUNO SET ID_ALUNO=?, NM_ALUNO=?, SOBRENOME_ALUNO=?, CPF_ALUNO=?, EMAIL_ALUNO=?, RM_ALUNO=?, PW_ALUNO=?, TELEFONE_ALUNO=?, CEP=?, LOGR=?, NUMERO=?, BAIRRO=?,"
							+ "CIDADE=?, UF=? WHERE RM_ALUNO=?");
			stmt.setInt(1,  a.getCod());
			stmt.setString(2, a.getNome());
			stmt.setString(3, a.getSobrenome());
			stmt.setString(4, a.getCpf());
			stmt.setString(5, a.getEmail());
			stmt.setString(6, a.getRm());
			stmt.setString(7, a.getSenha());
			stmt.setString(8, a.getTelefone());
			stmt.setString(9, a.getCep());
			stmt.setString(10, a.getLogr());
			stmt.setString(11, a.getNumero());
			stmt.setString(12, a.getBairro());
			stmt.setString(13, a.getCidade());
			stmt.setString(14, a.getUf());

			stmt.executeUpdate();

			return aluno;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}

	public Aluno deletarAluno(String rm, String senha) {
		Aluno aluno = null;
		try (Connection conn = Conexao.queroConectar()) {
			PreparedStatement stmt = conn.prepareStatement("DELETE FROM FN_ALUNO WHERE RM_ALUNO=? and PW_ALUNO=?");
			stmt.setString(1, rm);
			stmt.setString(2, senha);
			stmt.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return aluno;
	}

}

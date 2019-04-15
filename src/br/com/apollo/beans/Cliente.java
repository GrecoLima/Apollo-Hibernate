package br.com.apollo.beans;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "tb_cliente")
public class Cliente {
	
	@Id
	@SequenceGenerator(name="cliente",sequenceName="sq_tbl_cliente",allocationSize=1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="cliente")
	@Column(name = "cd_cliente")
	private Integer cdCliente;

	@Column(name = "nm_cliente", length = 50)
	private String nome;
	
	@Column(name = "dt_nascimento")
	private Calendar dataCriacao;
	
	@Column(name = "ds_sexo", length = 20)
	private String sexo;
	
	@Column(name = "nr_telefone")
	private Integer nrTelefone;
	
	@Column(name = "nr_cpf")
	private Integer nrCPF;
	
	@Column(name = "nr_rg")
	private Integer nrRG;

//	CONTRUTOR VAZIO

	public Cliente() {
		super();
	}
	
//	CONSTRUTOR CHEIO
	
	public Cliente(Integer cdCliente, String nome, Calendar dataCriacao, String sexo, Integer nrTelefone, Integer nrCPF,
			Integer nrRG) {
		super();
		this.cdCliente = cdCliente;
		this.nome = nome;
		this.dataCriacao = dataCriacao;
		this.sexo = sexo;
		this.nrTelefone = nrTelefone;
		this.nrCPF = nrCPF;
		this.nrRG = nrRG;
	}

// GETTER & SETTERS

	public Integer getCdCliente() {
		return cdCliente;
	}

	public void setCdCliente(Integer cdCliente) {
		this.cdCliente = cdCliente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Calendar getDataCriacao() {
		return dataCriacao;
	}

	public void setDataCriacao(Calendar dataCriacao) {
		this.dataCriacao = dataCriacao;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public Integer getNrTelefone() {
		return nrTelefone;
	}

	public void setNrTelefone(Integer nrTelefone) {
		this.nrTelefone = nrTelefone;
	}

	public Integer getNrCPF() {
		return nrCPF;
	}

	public void setNrCPF(Integer nrCPF) {
		this.nrCPF = nrCPF;
	}

	public Integer getNrRG() {
		return nrRG;
	}

	public void setNrRG(Integer nrRG) {
		this.nrRG = nrRG;
	}
	
}

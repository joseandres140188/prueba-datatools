package com.datatools.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "empresa")
public class Empresa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id_empresa; 
	
	@Column(name = "identificacion", nullable = false, length = 13, unique = true)
	private String identificacion; 
	
	@Column(name = "tipo_identificacion", nullable = false, length = 1)
	private Integer  tipo_identificacion; 
	
	@Column(name = "nombre", nullable = false, length = 70)
	private String nombre; 
	
	@Column(name = "direccion", nullable = false, length = 70)
	private String direccion;
	
	@Column(name = "id_ciudad", nullable = false, length = 1)
	private Integer id_ciudad; 
	
	@Column(name = "id_departamento", nullable = false, length = 1)
	private Integer id_departamento; 
	
	@Column(name = "id_pais", nullable = false, length = 1)
	private Integer id_pais; 
	
	@Column(name = "telefono", nullable = false, length = 10)
	private String  telefono; 
	
	@Column(name = "estatus", nullable = false, length = 1)
	private String  estatus; 
	
	@Column(name = "user_ingresa", nullable = false, length = 50)
	private String  user_ingresa;
	
	@Column(name = "user_modifica", nullable = true, length = 50)
	private String user_modifica;
	
	@Column(name = "fecha_ingresa", nullable = true)
	private LocalDateTime fecha_ingresa;
	
	@Column(name = "fecha_modifica", nullable = true)
	private LocalDateTime fecha_modifica; 

	

	public Integer getId_empresa() {
		return id_empresa;
	}

	public void setId_empresa(Integer id_empresa) {
		this.id_empresa = id_empresa;
	}

	public String getIdentificacion() {
		return identificacion;
	}

	public void setIdentificacion(String identificacion) {
		this.identificacion = identificacion;
	}

	public Integer getTipo_identificacion() {
		return tipo_identificacion;
	}

	public void setTipo_identificacion(Integer tipo_identificacion) {
		this.tipo_identificacion = tipo_identificacion;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public Integer getId_ciudad() {
		return id_ciudad;
	}

	public void setId_ciudad(Integer id_ciudad) {
		this.id_ciudad = id_ciudad;
	}

	public Integer getId_departamento() {
		return id_departamento;
	}

	public void setId_departamento(Integer id_departamento) {
		this.id_departamento = id_departamento;
	}

	public Integer getId_pais() {
		return id_pais;
	}

	public void setId_pais(Integer id_pais) {
		this.id_pais = id_pais;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getEstatus() {
		return estatus;
	}

	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}

	public String getUser_ingresa() {
		return user_ingresa;
	}

	public void setUser_ingresa(String user_ingresa) {
		this.user_ingresa = user_ingresa;
	}

	public String getUser_modifica() {
		return user_modifica;
	}

	public void setUser_modifica(String user_modifica) {
		this.user_modifica = user_modifica;
	}

	public LocalDateTime getFecha_ingresa() {
		return fecha_ingresa;
	}

	public void setFecha_ingresa(LocalDateTime fecha_ingresa) {
		this.fecha_ingresa = fecha_ingresa;
	}

	public LocalDateTime getFecha_modifica() {
		return fecha_modifica;
	}

	public void setFecha_modifica(LocalDateTime fecha_modifica) {
		this.fecha_modifica = fecha_modifica;
	} 
	
	  
}

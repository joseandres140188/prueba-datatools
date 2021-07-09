package com.datatools.service;

import java.util.List;

import com.datatools.model.Empresa;

public interface IEmpresaService {

	Empresa registrar(Empresa empresa) throws Exception; 
	Empresa editar(Empresa empresa) throws Exception; 
	List<Empresa> listar() throws Exception; 
	Empresa listarPorId(Integer id) throws Exception; 
	void eliminar (Integer id) throws Exception; 
 
}

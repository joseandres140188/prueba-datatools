package com.datatools.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.datatools.model.Empresa;
import com.datatools.repo.IEmpresaRepo;
import com.datatools.service.IEmpresaService;

@Service
public class EmpresaServiceImpl implements IEmpresaService{

	@Autowired
	private IEmpresaRepo repo;  //interfaz que tiene el acceso a la base de datos
	
	@Override
	public Empresa registrar(Empresa empresa) throws Exception {
		return repo.save(empresa); 
	}

	@Override
	public Empresa editar(Empresa empresa) throws Exception {
		return repo.save(empresa); 
	}

	@Override
	public List<Empresa> listar() throws Exception {
		return repo.findAll();
	}

	@Override
	public Empresa listarPorId(Integer id) throws Exception {
		Optional<Empresa> op= repo.findById(id); 
		return op.isPresent() ? op.get() : new Empresa(); 
	}

	@Override
	public void eliminar(Integer id) throws Exception {
		repo.deleteById(id);
		
	}

}

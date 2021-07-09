package com.datatools.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.datatools.exception.ModeloNotFoundExcpetion;
import com.datatools.model.Empresa;
import com.datatools.service.IEmpresaService;

@RestController
@RequestMapping("/empresas")
public class EmpresaController {
	
	@Autowired
	private IEmpresaService service; 
	
	@GetMapping
	public ResponseEntity<List<Empresa>> listar() throws Exception {

		return new ResponseEntity<>(service.listar(), HttpStatus.OK);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Empresa> listarPorId(@PathVariable("id") Integer id) throws Exception {
        Empresa obj = service.listarPorId(id); 
        if (obj == null) {
        	throw new ModeloNotFoundExcpetion("ID NO ENCONTRADO" + id); 
        }
		return new ResponseEntity<>(obj, HttpStatus.OK);
	}
	
	@PostMapping
	public ResponseEntity<Empresa> registar (@RequestBody Empresa empresa) throws Exception {
		return new ResponseEntity<>(service.registrar(empresa), HttpStatus.CREATED); 
	}

	@PutMapping
	public ResponseEntity<Empresa> modificar(@RequestBody Empresa empresa) throws Exception {
		return  new ResponseEntity<>(service.editar(empresa), HttpStatus.OK); 
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> eliminar(@PathVariable("id") Integer id) throws Exception {
		 service.eliminar(id); 
		 return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}

}

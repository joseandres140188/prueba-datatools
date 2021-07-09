package com.datatools.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.datatools.model.Empresa;

public interface IEmpresaRepo extends JpaRepository<Empresa, Integer> {

}

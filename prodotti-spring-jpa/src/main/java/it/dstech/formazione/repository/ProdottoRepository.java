package it.dstech.formazione.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.dstech.formazione.model.Prodotto;

public interface ProdottoRepository extends CrudRepository<Prodotto, Long>{
	
	@Query(value = "SELECT p FROM Prodotto p WHERE p.nome LIKE '%' || :parola || '%'"
			+ " OR p.quantita LIKE '%' || :parola || '%'"
			+ " OR p.categoria LIKE '%' || :parola || '%'")
	public List<Prodotto> search(@Param("parola") String parola);

}

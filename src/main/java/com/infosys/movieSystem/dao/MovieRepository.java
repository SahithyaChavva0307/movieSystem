package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.infosys.movieSystem.bean.Movie;


@Repository
public interface MovieRepository extends JpaRepository<Movie, String> {

	@Query("select max(movieId) from Movie")
	public String getLastId();
	
	@Query("select a from Movie a where language = ?1")
	public List<Movie> getLanguagewiseMovieList(String language);
} 
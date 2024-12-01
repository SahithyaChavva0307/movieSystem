package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.infosys.movieSystem.bean.Movie;

@Repository
public interface MovieRepository extends JpaRepository<Movie, String> {

    // Query to get the last movie ID (assuming movieId is numeric or sortable)
    @Query("select max(movieId) from Movie")
    public String getLastId();

    // Query to get a list of movies by language
    @Query("select a from Movie a where language = ?1")
    public List<Movie> getLanguagewiseMovieList(String language);

    // Finds movie by its movieId
    // If the movieId is of type String, no need to explicitly define this method.
    // The JpaRepository already provides a method findById().
    Movie findByMovieId(String movieId);
}

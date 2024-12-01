package com.infosys.movieSystem.dao;

import java.util.List;

import com.infosys.movieSystem.bean.MovieShow;
import com.infosys.movieSystem.bean.MovieShowEmbed;

public interface MovieShowDao {
    
    void save(MovieShow movieShow); // Save a new MovieShow entity
    
    List<MovieShow> findAll(); // Get all MovieShows
    
    List<MovieShowEmbed> getAllIds(); // Get all MovieShow IDs
    
    void deleteMovieShowById(MovieShowEmbed id); // Delete MovieShow by embedded ID
    
    MovieShow getMovieShowById(MovieShowEmbed id); // Get a MovieShow by its embedded ID
    
    void updateMovieShow(MovieShow movieShow); // Update MovieShow (new method for updating entity)
}

package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infosys.movieSystem.bean.MovieShow;
import com.infosys.movieSystem.bean.MovieShowEmbed;

@Repository
public class MovieShowDaoImpl implements MovieShowDao {

    @Autowired
    private MovieShowRepository repository;

    @Override
    public void save(MovieShow movieShow) {
        repository.save(movieShow); // Save MovieShow entity
    }

    @Override
    public List<MovieShow> findAll() {
        return repository.findAll(); // Get all MovieShows
    }

    @Override
    public List<MovieShowEmbed> getAllIds() {
        return repository.getAllIds(); // Get all MovieShow IDs
    }

    @Override
    public void deleteMovieShowById(MovieShowEmbed id) {
        repository.deleteById(id); // Delete MovieShow by ID
    }

    @Override
    public MovieShow getMovieShowById(MovieShowEmbed id) {
        return repository.findById(id).orElse(null); // Get MovieShow by ID, or null if not found
    }

    @Override
    public void updateMovieShow(MovieShow movieShow) {
        repository.save(movieShow); // Save or update MovieShow (JPA handles both save and update)
    }
}

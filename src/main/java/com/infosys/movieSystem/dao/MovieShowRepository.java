package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.infosys.movieSystem.bean.MovieShow;
import com.infosys.movieSystem.bean.MovieShowEmbed;

@Repository
public interface MovieShowRepository extends JpaRepository<MovieShow, MovieShowEmbed> {

    // Custom query to fetch all MovieShow IDs (embedded IDs)
    @Query("select embeddedId from MovieShow")
    List<MovieShowEmbed> getAllIds();
    
}

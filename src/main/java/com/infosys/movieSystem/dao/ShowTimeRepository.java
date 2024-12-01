package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.infosys.movieSystem.bean.ShowTime;

@Repository
public interface ShowTimeRepository extends JpaRepository<ShowTime, Integer> {

    // Retrieve the maximum showTimeId
    @Query("SELECT COALESCE(MAX(st.showTimeId), 0) FROM ShowTime st")
    Integer getLastId(); // Returns 0 if no records are found

    // Retrieve all showTimeIds
    @Query("SELECT st.showTimeId FROM ShowTime st")
    List<Integer> getAllShowTimeIds();

    // Retrieve showTimeName by showTimeId
    @Query("SELECT st.showTimeName FROM ShowTime st WHERE st.showTimeId = ?1")
    String getShowTimeName(Integer showTimeId);

    // Retrieve a ShowTime entity by showTimeName
    @Query("SELECT st FROM ShowTime st WHERE st.showTimeName = ?1")
    ShowTime getShowTime(String showTimeName);

   
}

package com.infosys.movieSystem.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infosys.movieSystem.bean.ShowTime;

@Repository
public class ShowTimeDaoImpl implements ShowTimeDao {

    @Autowired
    private ShowTimeRepository repository;

    @Override
    public void save(ShowTime showTime) {
        repository.save(showTime); // Saves or updates based on the entity's ID
    }

    @Override
    public Integer generateShowTimeId() {
        Integer newId = repository.getLastId();
        return (newId == null) ? 1 : newId + 1; // Generate new ID if not found
    }

    @Override
    public ShowTime findById(Integer id) {
        Optional<ShowTime> optionalShowTime = repository.findById(id);
        return optionalShowTime.orElse(null); // Handle cases where ID is not found
    }

    @Override
    public List<ShowTime> findAll() {
        return repository.findAll(); // Fetch all records
    }

    @Override
    public void deleteShowTimeById(Integer id) {
        repository.deleteById(id); // Delete by ID
    }

    @Override
    public List<Integer> getAllIds() {
        return repository.getAllShowTimeIds(); // Custom repository method
    }

    @Override
    public String getShowTimeName(Integer showTimeId) {
        return repository.getShowTimeName(showTimeId); // Custom repository method
    }

    @Override
    public ShowTime getShowTime(String showTimeName) {
        return repository.getShowTime(showTimeName); // Custom repository method
    }

   
}

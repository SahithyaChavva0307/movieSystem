package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.infosys.movieSystem.bean.TicketBooking;

public interface TicketBookingRepository extends JpaRepository<TicketBooking, Long> {

    

    @Query("SELECT MAX(ticketId) from TicketBooking")
    public Long getLastId();

	public TicketBooking findByTransactionId(String transactionId);
	@Query("SELECT t FROM TicketBooking t JOIN FETCH t.movie")
	List<TicketBooking> findAllWithMovies();

}
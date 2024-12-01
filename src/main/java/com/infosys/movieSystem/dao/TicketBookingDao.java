package com.infosys.movieSystem.dao;

import com.infosys.movieSystem.bean.TicketBooking;

import java.util.List;

public interface TicketBookingDao {

    // Method to save a TicketBooking object
    public void save(TicketBooking ticketBooking);

    // Method to retrieve all TicketBooking objects
    public List<TicketBooking> findAll();

    // Method to retrieve a specific TicketBooking by its ticketId
    public TicketBooking getTicket(Long ticketId);

    // Method to generate a new ticketId (custom logic for generating IDs)
    public Long generateId();

    // Method to cancel a booking (delete the ticket)
    public void cancelBooking(String transactionId);

    // Method to retrieve a TicketBooking by its transactionId
    public TicketBooking findByTransactionId(String transactionId);

	
}
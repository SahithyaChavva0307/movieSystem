
package com.infosys.movieSystem.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infosys.movieSystem.bean.TicketBooking;

import java.util.List;

@Repository
public class TicketBookingDaoImpl implements TicketBookingDao {

    @Autowired
    private TicketBookingRepository repository;

    // Method to save a TicketBooking object
    @Override
    public void save(TicketBooking ticketBooking) {
        repository.save(ticketBooking); // Save the ticket booking using the repository
    }

    // Method to retrieve all TicketBooking objects
    @Override
    public List<TicketBooking> findAll() {
        return repository.findAll(); // Retrieve all ticket bookings
    }

    // Method to retrieve a specific TicketBooking by its ticketId
    @Override
    public TicketBooking getTicket(Long ticketId) {
        return repository.findById(ticketId).orElse(null); // Find ticket by ticketId (returns null if not found)
    }

    // Method to generate a new ticketId (custom logic for generating IDs)
    @Override
    public Long generateId() {
        Long val = repository.getLastId(); // Get the last ticket ID
        if (val == null) {
            val = 10000001L; // Starting ID if no previous IDs are found
        } else {
            val = val + 1; // Increment the last ticket ID for new ticket
        }
        return val;
    }

    // Method to cancel a booking (delete the ticket)
    @Override
    public void cancelBooking(String transactionId) {
        TicketBooking ticketBooking = repository.findByTransactionId(transactionId); // Find ticket by transactionId
        if (ticketBooking != null) {
            repository.delete(ticketBooking);  // Delete the ticket from the repository
        }
    }

    // Method to retrieve a TicketBooking by its transactionId
    @Override
    public TicketBooking findByTransactionId(String transactionId) {
        return repository.findByTransactionId(transactionId);  // Find ticket by transactionId
    }
}

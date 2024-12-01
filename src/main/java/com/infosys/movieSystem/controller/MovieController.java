package com.infosys.movieSystem.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.infosys.movieSystem.bean.Movie;
import com.infosys.movieSystem.bean.MovieShow;
import com.infosys.movieSystem.bean.MovieShowDTO;
import com.infosys.movieSystem.bean.MovieShowEmbed;
import com.infosys.movieSystem.bean.ShowTime;
import com.infosys.movieSystem.bean.TicketBooking;
import com.infosys.movieSystem.dao.MovieDao;
import com.infosys.movieSystem.dao.MovieShowDao;
import com.infosys.movieSystem.dao.ShowTimeDao;
import com.infosys.movieSystem.dao.TicketBookingDao;
import com.infosys.movieSystem.service.MovieUserService;
import com.infosys.movieSystem.service.ShowTimeService;

import jakarta.servlet.http.HttpServletRequest;


@RestController
public class MovieController {
	

	@Autowired
	private ShowTimeDao showTimeDao;
	@Autowired
	private MovieDao movieDao;
	
	@Autowired
	private ShowTimeService showTimeService;
	
	@Autowired
	private MovieShowDao movieShowDao;
	 
	@Autowired
	private TicketBookingDao ticketBookingDao;

	@Autowired
	 private MovieUserService movieUserService;  
	
	@GetMapping("/addShowTime")
	public ModelAndView showTimeEntryPage() {
		Integer newId = showTimeDao.generateShowTimeId();
		ShowTime showTime = new ShowTime(newId);
		ModelAndView mv = new  ModelAndView("showTimeEntryPage");
		mv.addObject("ShowTimeRecord",showTime);
		return mv;
	}
	
	@PostMapping("/addShowTime")
	public ModelAndView saveShowTimeEntryPage(@ModelAttribute("ShowTimeRecord") ShowTime showTime) {
		Double royalPrice = showTimeService.createRoyalPrice(showTime.getShowTimePremierePrice());
		showTime.setShowTimeRoyalPrice(royalPrice);
		showTimeDao.save(showTime);
		return new ModelAndView("redirect:/index");
		
	}
	
	@GetMapping("/showTimeReport")
	public ModelAndView showTimeReportPage() {
		List<ShowTime> showTimeList = showTimeDao.findAll();
		ModelAndView mv = new  ModelAndView("showTimeReportPage");
		mv.addObject("showTimeList",showTimeList);
		return mv;
	}
	
	@GetMapping("/showTimeDeletion/{id}")
	public ModelAndView deleteShowTime(@PathVariable Integer id) {
		showTimeDao.deleteShowTimeById(id);
		return new ModelAndView("redirect:/showTimeReport");
	}
	
	
	@GetMapping("/showTimeUpdation/{id}")
	public ModelAndView showTimeUpdatePage(@PathVariable Integer id) {
	    ShowTime showTime = showTimeDao.findById(id);
	    ModelAndView mv = new ModelAndView("showTimeUpdatePage");
	    mv.addObject("showTime", showTime != null ? showTime : new ShowTime()); 
	    return mv;
	}



	@PostMapping("/showTimeUpdation")
	public ModelAndView updateShowTime(@ModelAttribute("showTime") ShowTime showTime) {
	    Double royalPrice = showTimeService.createRoyalPrice(showTime.getShowTimePremierePrice());
	    showTime.setShowTimeRoyalPrice(royalPrice); 
	    showTimeDao.save(showTime);
	    return new ModelAndView("redirect:/showTimeReport");
	}



	
	
	@GetMapping("/addMovie")
	public ModelAndView showMovieEntryPage() {
		String newId = movieDao.generateMovieId();
		Movie movie = new Movie(newId);
		List<Integer> showTimeList = showTimeDao.getAllIds();
		ModelAndView mv = new ModelAndView("movieEntryPage");
		mv.addObject("movieRecord",movie);
		mv.addObject("showTimeList",showTimeList);
		return mv;
	}
 
	@PostMapping("/addMovie")
	public ModelAndView saveMovieEntryPage(
	        @ModelAttribute("movieRecord") Movie movie, HttpServletRequest request) {
	    
	    String movieId = movie.getMovieId();
	    movieDao.save(movie);  // Save the Movie entity

	    // Loop to process show times and seat types for this movie
	    for (int i = 1; i <= 6; i++) {
	        String premierSeat = request.getParameter("premier" + i);
	        
	        if (premierSeat != null && !premierSeat.equals("---")) {
	            Integer showId = Integer.parseInt(request.getParameter("show" + i));
	            Integer premier = Integer.parseInt(premierSeat);
	            Integer royal = Integer.parseInt(request.getParameter("royal" + i));

	            
	            MovieShowEmbed embed = new MovieShowEmbed(movieId, showId);

	           
	            MovieShow movieShow = new MovieShow(embed, royal, premier);

	            
	            movieShowDao.save(movieShow);
	        }
	    }

	    return new ModelAndView("redirect:/index"); 

	}
	
	
	
	@GetMapping("/updateMovieShow/{id}")
	public ModelAndView showMovieShowUpdatePage(@PathVariable String id) {
	    Movie movie = movieDao.findById(id);
	    List<Integer> showTimeList = showTimeDao.getAllIds();

	    ModelAndView mv = new ModelAndView("movieShowUpdatePage");
	    mv.addObject("movie", movie);
	    mv.addObject("showTimeList", showTimeList);

	    return mv;
	}

	@PostMapping("/updateMovieShow")
	public ModelAndView saveMovieShowUpdatePage(HttpServletRequest request) {
	    String movieId = request.getParameter("movieId");
	    List<MovieShowEmbed> embedList = movieShowDao.getAllIds();

	    // Delete existing shows for the movie
	    for (MovieShowEmbed mse : embedList) {
	        if (movieId.equals(mse.getMovieId())) {
	            movieShowDao.deleteMovieShowById(new MovieShowEmbed(movieId, mse.getShowTimeId()));
	        }
	    }

	    // Save updated show details
	    for (int i = 1; i <= 6; i++) {
	        try {
	            String premierSeatStr = request.getParameter("premier" + i);
	            String showIdStr = request.getParameter("show" + i);
	            String royalSeatStr = request.getParameter("royal" + i);

	            // Skip if premierSeat or showId is not provided
	            if (premierSeatStr == null || showIdStr == null || royalSeatStr == null || "--".equals(premierSeatStr)) {
	                continue;
	            }

	            // Parse the seat numbers and showId
	            Integer showId = Integer.parseInt(showIdStr);
	            Integer premier = Integer.parseInt(premierSeatStr);
	            Integer royal = Integer.parseInt(royalSeatStr);

	            // Create embed and save the updated show
	            MovieShowEmbed embed = new MovieShowEmbed(movieId, showId);
	            MovieShow updatedShow = new MovieShow(embed, premier, royal);
	            movieShowDao.save(updatedShow);
	        } catch (NumberFormatException e) {
	            // Log and skip any invalid input to avoid crashing the update
	            System.err.println("Invalid input for show " + i + ": " + e.getMessage());
	            continue;
	        }
	    }

	    return new ModelAndView("redirect:/movieReport");
	}
	
	@GetMapping("/updateMovie/{id}")
	public ModelAndView showMovieUpdatePage(@PathVariable String id) {
	    // Fetch the movie details based on the movieId
	    Movie movie = movieDao.findById(id);

	    // Create the ModelAndView object and set the movie attribute
	    ModelAndView mv = new ModelAndView("movieUpdatePage");
	    mv.addObject("movie", movie);

	    return mv;
	}

	@PostMapping("/updateMovie")
	public ModelAndView saveMovieUpdate(@ModelAttribute("movie") Movie movie) {
	    // Ensure the movieId is passed correctly in the form
	    String movieId = movie.getMovieId();

	    // Find the existing movie from the database using the movieId
	    Movie existingMovie = movieDao.findById(movieId);

	    // Update the movie details (only duration and ratings are updated)
	    existingMovie.setUrl(movie.getUrl());
	    existingMovie.setDuration(movie.getDuration());
	    existingMovie.setRatings(movie.getRatings());

	    // Save the updated movie back to the database
	    movieDao.save(existingMovie);

	    // Redirect to the movie report or movie details page
	    return new ModelAndView("redirect:/movieReport");
	}
	@GetMapping("/movieDeletion/{id}")
	public ModelAndView movieDeletion(@PathVariable String id) {
		List<MovieShowEmbed> embedList = movieShowDao.getAllIds();
		for(MovieShowEmbed mse : embedList) {
			if(id.equals(mse.getMovieId())) {
				MovieShowEmbed mse2 = new MovieShowEmbed(id, mse.getShowTimeId());
				movieShowDao.deleteMovieShowById(mse2);
			}
		}
		
		movieDao.deleteMovieById(id);
		return new ModelAndView("redirect:/movieReport");
	}
	 @GetMapping("/movieReportLanguage")
	    public ModelAndView showSelectLanguagePage() {
	        Set<String> languageSet = movieDao.getAllLanguages(); 
	        ModelAndView mv = new ModelAndView("selectLanguagePage"); 
	        mv.addObject("languageSet", languageSet);
	        return mv;
	    }
	 @PostMapping("/movieReportLanguage")
	 public ModelAndView showMovieReportByLanguagePage(@RequestParam("languages") String language) {
	     // Fetch all showtimes
	     List<ShowTime> showTimeList = showTimeDao.findAll();
	     Map<Integer, String> showMap = new HashMap<>();


	     // Populate showMap with showtime ID and name
	     for (ShowTime showTime : showTimeList) {
	         showMap.put(showTime.getShowTimeId(), showTime.getShowTimeName());
	     }

	     // Fetch movies based on the selected language
	     List<Movie> movieList = movieDao.getLanguagewiseMovieList(language);

	     // Fetch all movie show entries
	     List<MovieShow> movieShowList = movieShowDao.findAll();
	     Map<String, List<MovieShowDTO>> movieMap = new HashMap<>();

	     // Process movie show data
	     for (Movie movie : movieList) {
	         List<MovieShowDTO> dtoList = new ArrayList<>();
	         String movieId = movie.getMovieId();

	         for (MovieShow movieShow : movieShowList) {
	             MovieShowEmbed id = movieShow.getEmbeddedId();
	             if (movieId.equals(id.getMovieId())) {
	            	 String showTimeName=showMap.get(id.getShowTimeId());
	                 Integer royalSeatNumber = movieShow.getRoyalSeatNumber();
	                 Integer premierSeatNumber = movieShow.getPremierSeatNumber();
	                 Integer royalBooked = movieShow.getRoyalBooked();
	                 Integer premierBooked = movieShow.getPremierBooked();

	                 // Create MovieShowDTO for each movieShow
	                 MovieShowDTO movieShowDTO = new MovieShowDTO(
	                     showTimeName, movieId, royalSeatNumber, premierSeatNumber, royalBooked, premierBooked
	                 );
	                 dtoList.add(movieShowDTO);
	             }
	         }

	         // Add movieId and its related MovieShowDTO list to movieMap
	         movieMap.put(movieId, dtoList);
	     }

	     // Prepare ModelAndView for the movie report page filtered by language
	     String page = "";
	     String role = movieUserService.getRole();
	     if (role != null) {
	            if (role.equalsIgnoreCase("Admin")) {
	                page = "movieReportByLanguage1";  // Admin's page
	            } else if (role.equalsIgnoreCase("Customer")) {
	                page = "movieReportByLanguage2";  // Customer's page
	            }
	     }
	     ModelAndView mv = new ModelAndView(page);
	     mv.addObject("movieList", movieList);
	     mv.addObject("movieMap", movieMap);
	     mv.addObject("selectedLanguage", language);

	     return mv;
	 }

	    @GetMapping("/movieReport")
	    public ModelAndView showMovieReportPage() {
	        String page = "";  // Declare the page variable

	        // Get the role of the user (admin or customer)
	        String role = movieUserService.getRole(); // Access role through movieUserService

	        // Assign page based on role
	        if (role != null) {
	            if (role.equalsIgnoreCase("Admin")) {
	                page = "movieReportPage";  // Admin's page
	            } else if (role.equalsIgnoreCase("Customer")) {
	                page = "movieReportPage2";  // Customer's page
	            }
	        }

	        // Fetch all show times from the database
	        List<ShowTime> showTimeList = showTimeDao.findAll();

	        // Create a map for showTimeId and showTimeName
	        Map<Integer, String> showMap = new HashMap<>();
	        for (ShowTime showTime : showTimeList) {
	            showMap.put(showTime.getShowTimeId(), showTime.getShowTimeName());
	        }

	        // Fetch all movies
	        List<Movie> movieList = movieDao.findAll();

	        // Fetch all movie shows
	        List<MovieShow> movieShowList = movieShowDao.findAll();

	        // Create a map to hold movieId and associated MovieShowDTO list
	        Map<String, List<MovieShowDTO>> movieMap = new HashMap<>();

	        // Process each movie to build the DTO list
	        for (Movie movie : movieList) {
	            List<MovieShowDTO> dtoList = new ArrayList<>();
	            String movieId = movie.getMovieId();

	            // Loop through movie shows and map data
	            for (MovieShow movieShow : movieShowList) {
	                MovieShowEmbed id = movieShow.getEmbeddedId();
	                if (movieId.equals(id.getMovieId())) {
	                    String showTimeName = showMap.get(id.getShowTimeId());
	                    Integer royalSeatNumber = movieShow.getRoyalSeatNumber();
	                    Integer premierSeatNumber = movieShow.getPremierSeatNumber();
	                    Integer royalBooked = movieShow.getRoyalBooked();
	                    Integer premierBooked = movieShow.getPremierBooked();

	                    // Create a MovieShowDTO for each movie show entry
	                    MovieShowDTO movieShowDTO = new MovieShowDTO(
	                        showTimeName, movieId, royalSeatNumber, premierSeatNumber, royalBooked, premierBooked
	                    );
	                    dtoList.add(movieShowDTO);
	                }
	            }

	            // Add the movieId and its corresponding DTO list to the map
	            movieMap.put(movieId, dtoList);
	        }

	        // Prepare the ModelAndView based on the user's role and add necessary data
	        ModelAndView mv = new ModelAndView(page);
	        mv.addObject("movieList", movieList);
	        mv.addObject("movieMap", movieMap);
	        mv.addObject("showMap", showMap);  // Add showMap to the model if needed
	        return mv;
	    }
	    
	    @GetMapping("/bookMovie/{id}")
	    public ModelAndView showBookMoviePage(@PathVariable String id) {
	        Movie movie = movieDao.findById(id);
	        String movieId = movie.getMovieId();

	        List<MovieShowEmbed> embedList = movieShowDao.getAllIds();
	        List<MovieShowDTO> movieShowList = new ArrayList<>();

	        for (MovieShowEmbed mse : embedList) {
	            if (movieId.equals(mse.getMovieId())) {
	                MovieShowEmbed mse2 = new MovieShowEmbed(movieId, mse.getShowTimeId());
	                MovieShow movieShow = movieShowDao.getMovieShowById(mse2);
	                String showTimeName = showTimeDao.getShowTimeName(mse.getShowTimeId());

	                MovieShowDTO movieShowDTO = new MovieShowDTO(
	                    showTimeName,
	                    movieId,
	                    movieShow.getRoyalSeatNumber(),
	                    movieShow.getPremierSeatNumber(),
	                    movieShow.getRoyalBooked(),
	                    movieShow.getPremierBooked()
	                );
	                movieShowList.add(movieShowDTO);
	            }
	        }

	        ModelAndView mv = new ModelAndView("movieBookingPage");
	        mv.addObject("movie", movie);
	        mv.addObject("movieShowList", movieShowList);
	        return mv;
	    }
	    @GetMapping("/bookSeats")
	    public ModelAndView showBookingForm(@RequestParam String movieId) {
	        // Retrieve movie details by movieId
	    return new ModelAndView("/movieBookingPage");
	    }
	    @PostMapping("/bookSeats")
	    public ModelAndView processBooking(
	            @RequestParam(required = false) String movieId,
	            @RequestParam(required = false) String movieName,
	            @RequestParam(required = false) String selectedShowTime,
	            @RequestParam Map<String, String> allParams) {

	        ModelAndView mv = new ModelAndView();

	        // Validate required fields
	        if (movieId == null || movieId.isEmpty() || 
	            movieName == null || movieName.isEmpty() || 
	            selectedShowTime == null || selectedShowTime.isEmpty()) {

	            mv.setViewName("bookingError");
	            mv.addObject("errorMessage", "All fields are required. Please select a movie, show time, and seat type.");
	            return mv;
	        }

	        // Extract seat type and number of seats dynamically
	        String seatType = allParams.get("seatType_" + selectedShowTime);
	        String numberOfSeatsStr = allParams.get("numberOfSeats_" + selectedShowTime);

	        if (seatType == null || numberOfSeatsStr == null || numberOfSeatsStr.isEmpty()) {
	            mv.setViewName("bookingError");
	            mv.addObject("errorMessage", "Please select a seat type and enter the number of seats.");
	            return mv;
	        }

	        Integer numberOfSeats;
	        try {
	            numberOfSeats = Integer.valueOf(numberOfSeatsStr);
	        } catch (NumberFormatException e) {
	            mv.setViewName("bookingError");
	            mv.addObject("errorMessage", "Invalid number of seats entered. Please enter a valid number.");
	            return mv;
	        }

	        // Fetch the ShowTime object based on selectedShowTime
	        ShowTime showTime = showTimeDao.getShowTime(selectedShowTime);
	        if (showTime == null) {
	            mv.setViewName("bookingError");
	            mv.addObject("errorMessage", "Selected show time not found.");
	            return mv;
	        }

	        // Retrieve the MovieShow entity using movieId and showTimeId
	        MovieShowEmbed mse = new MovieShowEmbed(movieId, showTime.getShowTimeId());
	        MovieShow movieShow = movieShowDao.getMovieShowById(mse);

	        // Calculate available seats
	        int availableRoyalSeats = movieShow.getRoyalSeatNumber() - movieShow.getRoyalBooked();
	        int availablePremierSeats = movieShow.getPremierSeatNumber() - movieShow.getPremierBooked();

	        // Check seat availability
	        if ("royal".equalsIgnoreCase(seatType)) {
	            if (availableRoyalSeats < numberOfSeats) {
	                mv.setViewName("bookingError");
	                mv.addObject("errorMessage", "Not enough Royal seats available.");
	                return mv;
	            }
	        } else if ("premier".equalsIgnoreCase(seatType)) {
	            if (availablePremierSeats < numberOfSeats) {
	                mv.setViewName("bookingError");
	                mv.addObject("errorMessage", "Not enough Premier seats available.");
	                return mv;
	            }
	        } else {
	            mv.setViewName("bookingError");
	            mv.addObject("errorMessage", "Invalid seat type selected.");
	            return mv;
	        }

	        // Retrieve prices based on seat type
	        double seatPrice = "royal".equalsIgnoreCase(seatType) ? showTime.getShowTimeRoyalPrice() : showTime.getShowTimePremierePrice();
	        Movie movie = movieDao.findById(movieId);

	        // Create a new ticket booking
	        TicketBooking ticket = new TicketBooking();
	        ticket.setMovie(movie);
	        ticket.setMovieName(movieName);
	        ticket.setShowTimeName(selectedShowTime);
	        ticket.setSeatType(seatType);
	        ticket.setNumberOfSeatBooking(numberOfSeats);

	        // Generate transaction ID
	        String transactionId = UUID.randomUUID().toString();
	        ticket.setTransactionId(transactionId);

	        // Calculate amount payable
	        double amountPayable = numberOfSeats * seatPrice;
	        ticket.setAmountPayable(amountPayable);

	        // Set booking status
	        ticket.setStatus("Confirmed");

	        // Save ticket to the database
	        ticketBookingDao.save(ticket);

	        // Update the MovieShow entity with the new booked seats count
	        if ("royal".equalsIgnoreCase(seatType)) {
	            movieShow.setRoyalBooked(movieShow.getRoyalBooked() + numberOfSeats);
	        } else {
	            movieShow.setPremierBooked(movieShow.getPremierBooked() + numberOfSeats);
	        }

	        // Save the updated MovieShow entity
	        movieShowDao.save(movieShow);

	        // Return success page
	        mv.setViewName("bookingSuccess");
	        mv.addObject("ticket", ticket);
	        return mv;
	    }



	    @GetMapping("/movieBookings")
	    public ModelAndView showAllBookings() {
	        List<TicketBooking> tickets = ticketBookingDao.findAll(); // Retrieve all bookings
	        ModelAndView mv = new ModelAndView("allBookings");
	        mv.addObject("tickets", tickets); // Add tickets to the model
	        return mv;
	    }
		@GetMapping("/cancelTicket")
		public ModelAndView cancellation() {
			return new ModelAndView("cancelTicket");
		}
		
		@GetMapping("/aboutCancel")
		public ModelAndView aboutCancel(@RequestParam("ticket") Long ticketId) {
		    ModelAndView modelAndView = new ModelAndView();

		    // Step 1: Validate ticket ID
		    if (ticketId == null) {
		        modelAndView.setViewName("errorPage");
		        modelAndView.addObject("error", "Ticket ID cannot be empty.");
		        return modelAndView;
		    }

		    // Step 2: Check if the ticket exists in the database
		    Optional<TicketBooking> ticketOptional = Optional.ofNullable(ticketBookingDao.getTicket(ticketId));
		    if (ticketOptional.isEmpty()) {
		        modelAndView.setViewName("errorPage");
		        modelAndView.addObject("error", "Ticket not found.");
		        return modelAndView;
		    }

		    TicketBooking ticket = ticketOptional.get();

		    // Step 3: Check if the ticket is already canceled
		    if ("Cancelled".equalsIgnoreCase(ticket.getStatus())) {
		        modelAndView.setViewName("errorPage");
		        modelAndView.addObject("error", "Ticket is already cancelled.");
		        return modelAndView;
		    }

		    // Step 4: Cancel the ticket (update status)
		    ticket.setStatus("Cancelled");
		    ticketBookingDao.save(ticket); // Save the updated ticket to the database

		    // Step 5: Return confirmation page
		    modelAndView.setViewName("cancelConfirmation");
		    modelAndView.addObject("message", "Ticket with ID " + ticketId + " has been successfully cancelled.");
		    return modelAndView;
		}
		
}

package com.infosys.movieSystem.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Movie {

    @Id
    private String movieId;
    private String movieName;
    private String language;
    private String genre;
    private Integer duration;
    private Double ratings;
    private String url;

    // Default Constructor
    public Movie() {
        super();
    }

    // Constructor with movieId
    public Movie(String movieId) {
        super();
        this.movieId = movieId;
    }

    // Constructor with all fields (except URL)
    public Movie(String movieId, String movieName, String language, String genre, Integer duration, Double ratings, String url) {
        super();
        this.movieId = movieId;
        this.movieName = movieName;
        this.language = language;
        this.genre = genre;
        this.duration = duration;
        this.ratings = ratings;
        this.url = url; // Initialize URL properly
    }

    // Getters and Setters
    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Double getRatings() {
        return ratings;
    }

    public void setRatings(Double ratings) {
        this.ratings = ratings;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    // toString Method
    @Override
    public String toString() {
        return "Movie [movieId=" + movieId + ", movieName=" + movieName + ", language=" + language + ", genre=" + genre
                + ", duration=" + duration + ", ratings=" + ratings + ", url=" + url + "]";
    }

	public double getTicketPrice() {
		// TODO Auto-generated method stub
		return 0;
	}

    // Uncommented example of generating a new movie ID
    // You would typically move this logic to a service class
    /*
    public String generateMovieId(MovieRepository repository) {
        String lastId = repository.getLastId();
        long id = 0L;
        if (lastId == null) {
            id = 100001L;
        } else {
            id = Long.parseLong(lastId.substring(1));
            id++;
        }
        return "M" + id;
    }
    */
}
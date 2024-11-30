package com.infosys.movieSystem.service;

import org.springframework.stereotype.Service;

@Service
public class ShowTimeService {
	public Double createRoyalPrice(Double premierePrice) {
		double royalPrice = premierePrice + (premierePrice * 0.25);
		return royalPrice;
	}
}
  
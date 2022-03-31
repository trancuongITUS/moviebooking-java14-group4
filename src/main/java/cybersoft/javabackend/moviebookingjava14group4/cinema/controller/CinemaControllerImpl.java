package cybersoft.javabackend.moviebookingjava14group4.cinema.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import cybersoft.javabackend.moviebookingjava14group4.cinema.model.Cinema;
import cybersoft.javabackend.moviebookingjava14group4.cinema.model.CinemaGroup;

@RestController
public class CinemaControllerImpl implements CinemaController {

	@Override
	public ResponseEntity<List<Cinema>> getCinemas() {
		// TODO Auto-generated method stub
		return new ResponseEntity<>(null, HttpStatus.OK);
	}

	@Override
	public ResponseEntity<List<CinemaGroup>> getCinemaGroups() {
		// TODO Auto-generated method stub
		return null;
	}

}

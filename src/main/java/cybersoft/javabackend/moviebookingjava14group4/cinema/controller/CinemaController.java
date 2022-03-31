package cybersoft.javabackend.moviebookingjava14group4.cinema.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;

import cybersoft.javabackend.moviebookingjava14group4.cinema.model.Cinema;
import cybersoft.javabackend.moviebookingjava14group4.cinema.model.CinemaGroup;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;

@Tag(name = "CinemaController", description = "Cinema endpoints!")
public interface CinemaController {
	
	@Operation(method = "GET", description = "Lấy toàn bộ rạp phim có trong hệ thống")
	@ApiResponses({
			@ApiResponse(responseCode = "200", description = "Phương thước GET thành công."),
			@ApiResponse(responseCode = "403", description = "Không có quyền truy cập vào phương thức này")
	})
	@GetMapping(value = "/LayThongTinToanBoRapPhim", produces = "application/json")
	public ResponseEntity<List<Cinema>> getCinemas();
	
	@Operation(method = "GET", description = "Lấy toàn bộ cụm rạp phim có trong hệ thống")
	@ApiResponses({
			@ApiResponse(responseCode = "200", description = "Phương thước GET thành công."),
			@ApiResponse(responseCode = "403", description = "Không có quyền truy cập vào phương thức này")
	})
	@GetMapping(value = "/LayThongTinToanBoCumRap", produces = "application/json")
	public ResponseEntity<List<CinemaGroup>> getCinemaGroups();
}

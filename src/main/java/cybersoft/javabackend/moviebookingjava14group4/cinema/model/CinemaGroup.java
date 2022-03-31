package cybersoft.javabackend.moviebookingjava14group4.cinema.model;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

import cybersoft.javabackend.moviebookingjava14group4.common.model.BaseEntity;
import lombok.Setter;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "mb_cinemagroups")
public class CinemaGroup extends BaseEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cg_id")
	protected Integer id;
	
	@Column(name = "cg_name", nullable = false)
	private String name;
	
	@Column(name = "cg_img")
	private String img;
	
	@Column(name = "cg_link")
	private String link;
	
	@OneToMany(mappedBy = "cinemaGroup")
	@JsonBackReference
	private Set<Cinema> cinemas = new LinkedHashSet<Cinema>();
}

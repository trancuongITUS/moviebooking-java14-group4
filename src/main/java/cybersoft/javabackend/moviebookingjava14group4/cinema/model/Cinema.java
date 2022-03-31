package cybersoft.javabackend.moviebookingjava14group4.cinema.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import cybersoft.javabackend.moviebookingjava14group4.common.model.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "mb_cinemas")
public class Cinema extends BaseEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cine_id")
	protected Integer id;
	
	@Column(name = "cine_name", nullable = false)
	private String name;
	
	@Column(name = "cine_address")
	private String address;
	
	@ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	@JoinColumn(name = "cine_cgid") // column tên cine_cgId, nhưng postgre lại đổi thành cine_cg_id
	@JsonManagedReference
	private CinemaGroup cinemaGroup;
	
}

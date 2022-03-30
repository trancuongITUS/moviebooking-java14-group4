CREATE TABLE public.mb_role
(
	role_id SERIAL,
	role_name varchar(255) NOT NULL,
	role_description text,
	
	CONSTRAINT role_pKey PRIMARY KEY (role_id)
);

CREATE TABLE public.mb_users
(
	usr_id SERIAL,
	usr_fullname varchar(255) NOT NULL,
	usr_username varchar(255) NOT NULL UNIQUE,
	usr_password varchar(255) NOT NULL,
	usr_email varchar(255),
	usr_phone varchar(10),
	usr_role_id int, -- khóa ngoại tới role
	
	created_at timestamp without time zone,
	updated_at timestamp without time zone,
	created_by int, -- khóa ngoại tới user
	updated_by int, -- khóa ngoại tới user
	
	CONSTRAINT users_pKey PRIMARY KEY (usr_id)
);

CREATE TABLE public.mb_films
(
	film_id SERIAL,
	film_name varchar(255) NOT NULL,
	film_description text,
	film_trailer varchar(255),
    film_img varchar(255),
	film_openning timestamp without time zone,
	film_duration int, --minutes
	film_type varchar(255),
    film_isShowing boolean,
	
	created_at timestamp without time zone,
	updated_at timestamp without time zone,
	created_by int, -- khóa ngoại tới user
	updated_by int, -- khóa ngoại tới user
	
	CONSTRAINT films_pKey PRIMARY KEY (film_id)
);

CREATE TABLE public.mb_cinemaGroups
(
	cg_id SERIAL,
	cg_name varchar(255) NOT NULL,
	cg_img varchar(255),
	cg_link varchar(255),
	
	CONSTRAINT cineGrs_pKey PRIMARY KEY (cg_id)
);

CREATE TABLE public.mb_cinemas
(
	cine_id SERIAL,
	cine_name varchar(255) NOT NULL,
	cine_address varchar(255),
	cine_cgId int, -- khóa ngoại tới cinemaGroups
	
	CONSTRAINT cine_pKey PRIMARY KEY (cine_id)
);

CREATE TABLE public.mb_cinemaFilms
(
	cf_id SERIAL,
	cf_cinema_id int, -- khóa ngoại tới cinema
	cf_film_id int, -- khóa ngoại tới film
	
	CONSTRAINT cinemaFilms_pKey PRIMARY KEY (cf_id)
);

CREATE TABLE public.mb_showtimes
(
	st_id SERIAL,
	st_cinemaFilm_id int, -- khóa ngoại tới cinemaFilm
	st_start timestamp without time zone,
	
	CONSTRAINT showtimes_pKey PRIMARY KEY (st_id)
);

CREATE TABLE public.mb_ticketType
(
	tkt_id SERIAL,
	tkt_cinemaGroups_id int, -- khóa ngoại tới cinemaGroup
	tkt_type varchar(255),
	tkt_price money,
	
	CONSTRAINT ticketTypes PRIMARY KEY (tkt_id)
);

CREATE TABLE public.mb_tickets
(
	tick_id SERIAL,
	tick_showtime_id int, -- khóa ngoại tới showtime
	tick_number int, -- số ghế
	tick_isBooked boolean,
	tick_type_id int, -- khóa ngoại tới ticketType
	
	CONSTRAINT ticket_pKey PRIMARY KEY (tick_id)
);

CREATE TABLE public.mb_history
(
	his_id SERIAL,
	his_usr_id int, -- Khóa ngoại tới users
	his_tick_id int, -- khóa ngoại tới ticket
	
	created_at timestamp without time zone,
	updated_at timestamp without time zone,
	created_by int, -- khóa ngoại tới user
	updated_by int, -- khóa ngoại tới user
	
	CONSTRAINT history_pKey PRIMARY KEY (his_id)
);
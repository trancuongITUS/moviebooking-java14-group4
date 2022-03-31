ALTER TABLE mb_role
ADD CONSTRAINT FK_role_created FOREIGN KEY (created_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_role
ADD CONSTRAINT FK_role_updated FOREIGN KEY (updated_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_users
ADD CONSTRAINT FK_users_role FOREIGN KEY (usr_role_id) REFERENCES mb_role(role_id);

ALTER TABLE mb_users
ADD CONSTRAINT FK_users_created FOREIGN KEY (created_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_users
ADD CONSTRAINT FK_users_updated FOREIGN KEY (updated_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_films
ADD CONSTRAINT FK_films_created FOREIGN KEY (created_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_films
ADD CONSTRAINT FK_films_updated FOREIGN KEY (updated_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_cinemaGroups
ADD CONSTRAINT FK_cinemaGroups_created FOREIGN KEY (created_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_cinemaGroups
ADD CONSTRAINT FK_cinemaGroups_updated FOREIGN KEY (updated_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_cinemas
ADD CONSTRAINT FK_cinemas_groups FOREIGN KEY (cine_cgId) REFERENCES mb_cinemaGroups(cg_id);

ALTER TABLE mb_cinemas
ADD CONSTRAINT FK_cinemas_created FOREIGN KEY (created_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_cinemas
ADD CONSTRAINT FK_cinemas_updated FOREIGN KEY (updated_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_cinemaFilms
ADD CONSTRAINT FK_cinemaFilms_cinema FOREIGN KEY (cf_cinema_id) REFERENCES mb_cinemas(cine_id);

ALTER TABLE mb_cinemaFilms
ADD CONSTRAINT FK_cinemaFilms_film FOREIGN KEY (cf_film_id) REFERENCES mb_films(film_id);

ALTER TABLE mb_showtimes
ADD CONSTRAINT FK_showtimes_cineFilms FOREIGN KEY (st_cinemaFilm_id) REFERENCES mb_cinemaFilms(cf_id);

ALTER TABLE mb_showtimes
ADD CONSTRAINT FK_showtimes_created FOREIGN KEY (created_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_showtimes
ADD CONSTRAINT FK_showtimes_updated FOREIGN KEY (updated_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_ticketType
ADD CONSTRAINT FK_ticketType_cineGroup FOREIGN KEY (tkt_cinemaGroups_id) REFERENCES mb_cinemaGroups(cg_id);

ALTER TABLE mb_ticketType
ADD CONSTRAINT FK_ticketType_created FOREIGN KEY (created_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_ticketType
ADD CONSTRAINT FK_ticketType_updated FOREIGN KEY (updated_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_tickets
ADD CONSTRAINT FK_ticket_showtime FOREIGN KEY (tick_showtime_id) REFERENCES mb_showtimes(st_id);

ALTER TABLE mb_tickets
ADD CONSTRAINT FK_ticket_ticketType FOREIGN KEY (tick_type_id) REFERENCES mb_ticketType(tkt_id);

ALTER TABLE mb_history
ADD CONSTRAINT FK_history_users FOREIGN KEY (his_usr_id) REFERENCES mb_users(usr_id);

ALTER TABLE mb_history
ADD CONSTRAINT FK_history_ticket FOREIGN KEY (his_tick_id) REFERENCES mb_tickets(tick_id);

ALTER TABLE mb_history
ADD CONSTRAINT FK_history_created FOREIGN KEY (created_by) REFERENCES mb_users(usr_id);

ALTER TABLE mb_history
ADD CONSTRAINT FK_history_updated FOREIGN KEY (updated_by) REFERENCES mb_users(usr_id);
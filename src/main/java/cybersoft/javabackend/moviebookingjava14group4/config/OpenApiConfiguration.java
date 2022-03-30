package cybersoft.javabackend.moviebookingjava14group4.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.models.ExternalDocumentation;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;

@Configuration
public class OpenApiConfiguration {

	@Bean
	public OpenAPI getOpenApi() {
		
		return new OpenAPI()
				.info(new Info().title("Movie Booking API")
						.description("Movie Booking for Cybersoft Education!")
						.version("v.0.0.1")
						.license(new License()
								.name("No License")
								.url("https://www.facebook.com/profile.php?id=100008015554824"))
						.contact(new Contact()
								.email("trancuongitus@gmail.com")
								.name("Tran Vu Viet Cuong - Group4 CRM")))
				.externalDocs(new ExternalDocumentation()
						.description("Spring Documentation")
						.url("https://docs.spring.io/spring-framework/docs/current/reference/html/"));
				
	}
}

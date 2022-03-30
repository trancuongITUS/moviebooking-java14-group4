package cybersoft.javabackend.moviebookingjava14group4.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.models.ExternalDocumentation;
import io.swagger.v3.oas.models.OpenAPI;
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
								.name("Apache 2.0").url("http://springdoc.org")))
				.externalDocs(new ExternalDocumentation()
						.description("Movie Booking Documentation")
						.url("https://www.facebook.com/profile.php?id=100008015554824")); //sửa lại sau
						
	}
}

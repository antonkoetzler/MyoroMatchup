package com.myoro.myoro_matchup_api.config;

import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import io.swagger.v3.oas.models.security.SecurityScheme;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/** OpenAPI configuration for Swagger UI. */
@Configuration
public class OpenApiConfig {

  /**
   * Configures OpenAPI with JWT Bearer token authentication.
   *
   * @return OpenAPI configuration
   */
  @Bean
  public OpenAPI customOpenAPI() {
    final String securitySchemeName = "bearerAuth";
    return new OpenAPI()
        .info(
            new Info()
                .title("Myoro Matchup API")
                .version("1.0.0")
                .description("REST API for Myoro Matchup application")
                .contact(new Contact().name("Myoro").email("support@myoro.com"))
                .license(new License().name("Proprietary").url("https://myoro.com")))
        .addSecurityItem(new SecurityRequirement().addList(securitySchemeName))
        .components(
            new Components()
                .addSecuritySchemes(
                    securitySchemeName,
                    new SecurityScheme()
                        .name(securitySchemeName)
                        .type(SecurityScheme.Type.HTTP)
                        .scheme("bearer")
                        .bearerFormat("JWT")
                        .description(
                            "JWT token authentication. Get token from /api/auth/login or /api/auth/signup")));
  }
}

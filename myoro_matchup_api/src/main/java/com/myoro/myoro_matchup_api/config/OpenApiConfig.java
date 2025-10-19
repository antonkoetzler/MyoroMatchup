package com.myoro.myoro_matchup_api.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.security.SecurityScheme;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/** OpenAPI configuration for Swagger documentation */
@Configuration
public class OpenApiConfig {

  /**
   * Creates OpenAPI configuration with JWT security scheme
   * 
   * @return OpenAPI configuration with JWT bearer authentication
   */
  @Bean
  public OpenAPI customOpenAPI() {
    return new OpenAPI()
        .info(new Info()
            .title("Myoro Matchup API")
            .version("1.0.0")
            .description("API for Myoro Matchup application."))
        .components(new Components()
            .addSecuritySchemes("bearerAuth", new SecurityScheme()
                .type(SecurityScheme.Type.HTTP)
                .scheme("bearer")
                .bearerFormat("JWT")
                .description("JWT token obtained from /api/auth/login or /api/auth/signup.")))
        .addSecurityItem(new SecurityRequirement().addList("bearerAuth"));
  }
}

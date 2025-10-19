package com.myoro.myoro_matchup_api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;

@RestController
@Tag(name = "Health", description = "Health check endpoints.")
public class HealthController {

    @Operation(summary = "API Health Check", description = "Returns a simple message indicating that the API is running and accessible. This endpoint can be used for monitoring and load balancer health checks.")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "API is running successfully.", content = @Content(mediaType = "text/plain", schema = @Schema(example = "API is running!")))
    })
    @GetMapping("/")
    /**
     * Health check endpoint
     * 
     * @return simple status message indicating API is running
     */
    public String home() {
        return "API is running!";
    }
}
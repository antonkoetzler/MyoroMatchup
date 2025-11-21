package com.myoro.myoro_matchup_api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/** Health controller. */
@RestController
public class HealthController {

    /**
     * Health check endpoint
     * 
     * @return simple status message indicating API is running
     */
    @GetMapping("/")
    public String home() {
        return "API is running!";
    }
}
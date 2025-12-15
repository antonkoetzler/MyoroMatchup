package com.myoro.myoro_matchup_api.controller;

import com.myoro.myoro_matchup_api.service.ImageStorageService;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/** Image controller for serving uploaded images. */
@RestController
@RequestMapping("/api/images")
public class ImageController {
  /** Image storage service. */
  @Autowired private ImageStorageService imageStorageService;

  /**
   * Serves an image file.
   *
   * @param subdirectory the subdirectory (e.g., "profile", "game")
   * @param filename the filename
   * @return the image file
   */
  @GetMapping("/{subdirectory}/{filename:.+}")
  public ResponseEntity<byte[]> getImage(
      @PathVariable String subdirectory, @PathVariable String filename) {
    try {
      String imagePath = subdirectory + "/" + filename;
      Path filePath = imageStorageService.getImageFilePath(imagePath);

      if (!Files.exists(filePath)) {
        return ResponseEntity.notFound().build();
      }

      byte[] imageBytes = Files.readAllBytes(filePath);
      String contentType = Files.probeContentType(filePath);
      if (contentType == null) {
        contentType = "application/octet-stream";
      }

      HttpHeaders headers = new HttpHeaders();
      headers.setContentType(MediaType.parseMediaType(contentType));
      headers.setContentLength(imageBytes.length);

      return new ResponseEntity<>(imageBytes, headers, HttpStatus.OK);
    } catch (IOException e) {
      return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
    }
  }
}

package com.myoro.myoro_matchup_api.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/** Image storage service for handling file uploads. */
@Service
public class ImageStorageService {
  /** Base directory for storing images. */
  @Value("${app.images.storage.path:./uploads/images}")
  private String storagePath;

  /** Base URL for serving images. */
  @Value("${app.images.base.url:/api/images}")
  private String baseUrl;

  /**
   * Stores an image file and returns the relative path.
   *
   * @param file the multipart file to store
   * @param subdirectory the subdirectory to store the image in (e.g., "profile", "game")
   * @return the relative path to the stored image
   * @throws IOException if file storage fails
   */
  public String storeImage(MultipartFile file, String subdirectory) throws IOException {
    if (file == null || file.isEmpty()) {
      return null;
    }

    // Validate file type
    String contentType = file.getContentType();
    if (contentType == null || !contentType.startsWith("image/")) {
      throw new IllegalArgumentException("File must be an image");
    }

    // Validate file size (max 10MB)
    long maxSize = 10 * 1024 * 1024; // 10MB
    if (file.getSize() > maxSize) {
      throw new IllegalArgumentException("File size exceeds maximum allowed size of 10MB");
    }

    // Create directory if it doesn't exist
    Path uploadDir = Paths.get(storagePath, subdirectory);
    Files.createDirectories(uploadDir);

    // Generate unique filename
    String originalFilename = file.getOriginalFilename();
    String extension = "";
    if (originalFilename != null && originalFilename.contains(".")) {
      extension = originalFilename.substring(originalFilename.lastIndexOf("."));
    }
    String filename = UUID.randomUUID().toString() + extension;

    // Store file
    Path filePath = uploadDir.resolve(filename);
    Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

    // Return relative path
    return subdirectory + "/" + filename;
  }

  /**
   * Deletes an image file.
   *
   * @param imagePath the relative path to the image
   * @throws IOException if file deletion fails
   */
  public void deleteImage(String imagePath) throws IOException {
    if (imagePath == null || imagePath.isEmpty()) {
      return;
    }

    Path filePath = Paths.get(storagePath, imagePath);
    if (Files.exists(filePath)) {
      Files.delete(filePath);
    }
  }

  /**
   * Gets the full URL for an image.
   *
   * @param imagePath the relative path to the image
   * @return the full URL, or null if imagePath is null/empty
   */
  public String getImageUrl(String imagePath) {
    if (imagePath == null || imagePath.isEmpty()) {
      return null;
    }
    return baseUrl + "/" + imagePath;
  }

  /**
   * Gets the full file path for an image.
   *
   * @param imagePath the relative path to the image
   * @return the full file path
   */
  public Path getImageFilePath(String imagePath) {
    return Paths.get(storagePath, imagePath);
  }
}

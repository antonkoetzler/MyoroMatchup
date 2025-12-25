package com.myoro.myoro_matchup_api.repository;

import com.myoro.myoro_matchup_api.model.PasswordResetTokenModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/** Password reset token repository. */
@Repository
public interface PasswordResetTokenRepository extends JpaRepository<PasswordResetTokenModel, Long> {
  /**
   * Finds a password reset token by token string.
   *
   * @param token the token string
   * @return the password reset token model
   */
  PasswordResetTokenModel findByToken(String token);
}

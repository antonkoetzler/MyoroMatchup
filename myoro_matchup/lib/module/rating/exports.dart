// TODO: Rating Module Implementation
//
// This module will handle player ratings after games.
// Features needed:
// 1. 10-star rating system
// 2. Mandatory rating within 24 hours after game ends
// 3. Rating submission UI
// 4. Rating history view
//
// Backend API needed:
// - POST /games/{gameId}/ratings - Submit rating for a player
// - GET /games/{gameId}/ratings - Get all ratings for a game
// - GET /users/{userId}/ratings - Get user's rating history
//
// Components to create:
// - RatingResponseDto, RatingRequestDto
// - RatingRepository
// - RatingService
// - PlayerRatingWidget (10-star input)
// - PostGameRatingScreen
// - RatingDeadlineTracker

export 'dto/exports.dart';
export 'widget/exports.dart';

# Standards

## Folder Structure

**Layered architecture**, AKA, opposite of domain drive developement. For example, all controller files go into `myoro_matchup_api/src/main/java/com/myoro/myoro_matchup_api/controller` directory.

## File Convention and Nomenclature

1. Files should be in upper camel case;
1. The suffix of a file should be the name of the directory that they are in. For example, every file's file name and class name in the `myoro_matchup_api/src/main/java/com/myoro_matchup_api/controller` folder should have the suffix of `Controller`.

## Testing

Currently, there are no tests, only DALE.

## Code Standards

When in doubt if a certain specific Java code standard is not enforced in the project, official Spring Boot & Java standards should be enforced.

### Specific Java code standards

#### Documentation

1. All `class`s, fields, and methods must have documentation comments;
1. Methods should always have `@param` and `@return` tags;

#### Requests and Responses

1. Every request and response should have a custom request DTO.

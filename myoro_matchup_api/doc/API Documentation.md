# API Documentation

This section covers where the API and all of it's endpoints are actually documented.

1. **REST Client:** HoppScotch. Email me for access <antonkoetzler-faust@hotmail.com>
2. **Endpoints:** Swagger. `http://localhost:8080/swagger-ui.html`

## Database Migrations

### Why SQL Migrations with ORM?

Even when using JPA/Hibernate ORM, SQL migrations are essential:

1. **Version Control**: Schema changes are tracked in version control alongside code
2. **Reproducible Deployments**: Same schema across all environments (dev, staging, production)
3. **Production Safety**: `ddl-auto=create` drops all data on startup - unacceptable in production
4. **Team Collaboration**: All developers have identical database schemas
5. **Data Migrations**: Handle data transformations, not just schema changes
6. **Rollback Capability**: Can revert schema changes if needed
7. **Audit Trail**: Complete history of all database changes

### Setup

The project uses **Flyway** for database migrations. Configuration is in `application.properties`:

```properties
spring.flyway.enabled=true
spring.flyway.locations=classpath:db/migration
spring.flyway.baseline-on-migrate=true
spring.flyway.validate-on-migrate=true
spring.jpa.hibernate.ddl-auto=validate
```

Migrations are located in: `src/main/resources/db/migration/`

### Creating Migrations

1. **Naming Convention**: `V{version}__{description}.sql`
   - Version: Sequential number (V1, V2, V3...)
   - Description: Underscore-separated description
   - Example: `V1__Initial_schema.sql`, `V2__Add_user_email_index.sql`

2. **Generate Initial Schema**:
   - Option A: Temporarily set `spring.jpa.hibernate.ddl-auto=update`, start app, then export schema from database
   - Option B: Use Hibernate SchemaExport tool
   - Option C: Manually write SQL based on your JPA entities

3. **Creating New Migrations**:
   ```bash
   # Create new migration file
   touch src/main/resources/db/migration/V{N}__{description}.sql
   ```
   Write your SQL changes in the file.

### Using Migrations

- **Automatic**: Migrations run automatically on application startup
- **Validation**: Flyway validates migration checksums to detect manual changes
- **Baseline**: Existing databases are automatically baselined on first run

### Best Practices

1. **Never modify existing migrations** - create new ones instead
2. **Test migrations** - run on a copy of production data before deploying
3. **Keep migrations small** - one logical change per migration
4. **Use transactions** - wrap DDL in transactions where possible
5. **Idempotent operations** - use `IF NOT EXISTS` where applicable
6. **Review generated SQL** - if using ORM to generate, always review the output

### Migration Workflow

1. Make changes to JPA entities
2. Create new migration file with next version number
3. Write SQL to alter schema (add/remove columns, tables, indexes, etc.)
4. Test migration locally
5. Commit migration file with code changes
6. Deploy - Flyway applies migrations automatically on startup

## Code Formatting

The project uses **Google Java Format** via the `fmt-maven-plugin` with a 120 character line length limit.

### Formatting

Run the format script:
```bash
./tool/format_and_fix.sh
```

Or directly with Maven:
```bash
./mvnw fmt:format
```

### Configuration

- **Line Length**: 120 characters (configured in `pom.xml`)
- **Formatter**: Google Java Format (via fmt-maven-plugin)
- **VS Code**: Format on save enabled with 120 character ruler
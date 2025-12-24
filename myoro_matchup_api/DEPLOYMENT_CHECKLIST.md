### 4. Email Configuration

- [ ] Set up SMTP server (Gmail app password or SendGrid API key)
- [ ] Update email credentials in `.env`
- [ ] Test email sending functionality
- [ ] Update `SPRING_MAIL_FROM` with your actual domain email

### 5. Application Configuration

- [ ] Update `APP_FRONTEND_URL` to your production frontend URL
- [ ] Set appropriate `SERVER_PORT` (default 8080)
- [ ] Configure image storage path if different from default
- [ ] Test all API endpoints

### 6. Build and Run

- [ ] Build the application: `mvn clean package`
- [ ] Test the JAR file locally: `java -jar target/myoro-matchup-api-0.0.1.jar`
- [ ] Verify application starts without errors
- [ ] Check health endpoint: `http://localhost:8080/actuator/health`

### 7. Production Considerations

- [ ] Set up proper logging configuration
- [ ] Configure backup strategy for database
- [ ] Set up monitoring/alerting (optional but recommended)
- [ ] Configure firewall rules if exposing to internet
- [ ] Set up SSL/TLS certificate if exposing HTTPS
- [ ] Configure reverse proxy (nginx/Apache) if needed

### 8. File Storage

- [ ] Create uploads directory: `mkdir -p uploads/images`
- [ ] Set proper permissions on uploads directory
- [ ] Configure backup for uploaded images

### 9. Testing

- [ ] Run all tests: `mvn test`
- [ ] Test authentication flow
- [ ] Test email sending
- [ ] Test file uploads
- [ ] Test database migrations

### 10. Documentation

- [ ] Document your production setup
- [ ] Keep deployment notes for future reference
- [ ] Document any custom configurations

## Quick Start Commands

```bash
# 1. Copy environment file
cp .env.example .env

# 2. Edit .env with your values
# (Use your preferred editor)

# 3. Start PostgreSQL (if using docker-compose)
docker-compose up -d

# 4. Build the application
mvn clean package

# 5. Run the application
java -jar target/myoro-matchup-api-0.0.1.jar
```

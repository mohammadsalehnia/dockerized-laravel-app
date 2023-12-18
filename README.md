# Laravel 10 Dockerized Project

This is a Laravel 10 project containerized with Docker Compose for easy deployment and scalability.
## Prerequisites

Before we begin, please ensure that you have installed the necessary software on your computer:
- 🐳 [Docker](https://www.docker.com/)
- 🚢 [Docker Compose](https://docs.docker.com/compose/)

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/mohammadsalehnia/dockerized-laravel-app.git
   
2. Navigate to the project directory:

    ```bash
   cd laravel-10-dockerized

3. Create a .env file:

    ```bash
   cp .env.example .env

4. Update the .env file with your database credentials and other configuration settings.


5. Build and start the Docker containers:

    ```bash
   docker-compose up -d --build
   
6. Install Laravel dependencies:
   ```bash
   docker-compose exec php composer install
   
7. Generate the application key:
    ```bash
   docker-compose exec php composer install
   
8. Generate the application key:
    ```bash
   docker-compose exec php php artisan key:generate
   
9. Run database migrations and seed the database (if needed):
    ```bash
   docker-compose exec php php artisan migrate --seed

10. Access the Laravel application:

Open your browser and go to http://localhost:8000.

## Additional Commands

* Stop the containers:
    ```bash
   docker-compose down

## Notes
* The project uses Nginx as a web server, PHP 8.1, MySQL, PostgreSQL and Redis.
* Ensure that the containers are stopped before making changes to the docker-compose.yml file.
* Customize the Dockerfile and docker-compose.yml as needed for your specific project requirements.

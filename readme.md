# Daniel Oizumi WP Sample

This is a WordPress website sample created using the Gulp toolkit, SASS, JavaScript, and jQuery for the theme. Additionally, it incorporates a custom mu-plugin, Advanced Custom Fields, and custom Gutenberg blocks on the backend.

## Prerequisites
1. Docker: Docker must be installed on your system. You can download and install Docker from the official website (https://www.docker.com/get-started).
2. Docker Compose: Docker Compose is a separate tool for defining and running multi-container Docker applications. It typically comes bundled with Docker on most platforms. Ensure that Docker Compose is installed and available on your system.

## Tutorial
1. **Create a Project Directory**
    First, clone this repository to your local machine.

2. **Start Docker Compose**
    Open your terminal, navigate to the project directory, and run the following command to start the Docker Compose environment:
    
    ```bash
    docker-compose up
    ```

3. **Wait for Containers to Start**
    Docker Compose will pull the necessary images and start the containers. Wait a minute or two for the process to complete.

4. **Import WordPress Database**
    a. Open a new terminal, and access the WordPress container by running the following command:
    
    ```bash
    docker-compose exec wordpress /bin/bash
    ```
    
    b. Once you're inside the container, use the mysql command to import the database:

    ```bash
    mysql -u wordpress -pwordpress wordpress < /var/www/html/wordpress.sql
    ```

    You'll be prompted to enter the password, which is wordpress.

    c. Exit the container by typing ```exit```.

5. **Access the WordPress Site**
    After completing the setup and importing the database, you can access your WordPress site by navigating to http://localhost in your web browser.
    To access the administrator panel, http://localhost/admin and use the following credentials.
    Username: admin
    Password: admin

6. **Cleanup**
    When you're done working on your WordPress site, you can stop and remove the Docker containers by running:
    ```bash
    docker-compose down -v
    ```

## Fix White Page

If the site does not present any content, please make sure that the oizumi theme and ACF are activated.

## Fix Permission Error

If you have permission errors when uploading images or plugins, please run the following code from the root directory of this project:
    ```bash
    sudo chown --recursive --changes www-data:www-data oizumi/wp-content
    ```
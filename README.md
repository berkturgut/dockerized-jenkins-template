# Jenkins Docker Template

This project provides a template to quickly and easily spin up a Jenkins instance using Docker Compose. The project uses a Docker volume to persist Jenkins data, ensuring that all Jenkins configurations and build history are retained even after the container is restarted.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Jenkins Configuration](#jenkins-configuration)
- [Volume Information](#volume-information)
- [Contributing](#contributing)
- [License](#license)

## Features

- Runs Jenkins **LTS** version.
- Persist Jenkins configurations and build data using Docker volumes.
- Easily manageable with Docker Compose.

## Installation

### Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Steps

1. Clone this repository:

    ```bash
    git clone https://github.com/your-username/jenkins-docker-template.git
    ```

2. Navigate to the project directory:

    ```bash
    cd jenkins-docker-template
    ```

3. Start Jenkins using Docker Compose:

    ```bash
    docker-compose up -d
    ```

4. Once Jenkins is running, open your browser and go to:

    ```
    http://localhost:8080
    ```

5. To unlock Jenkins for the first time, use the password stored in the `jenkins_home` folder:

    ```bash
    cat jenkins_home/secrets/initialAdminPassword
    ```

    Alternatively, you can retrieve the password directly from the Docker logs:

    ```bash
    docker logs jenkins-server
    ```

    Look for the following line in the logs, which contains the initial admin password:

    ```
    *************************************************************
    *************************************************************
    *************************************************************

    Jenkins initial setup is required. An admin user has been created and a password generated.

    Please use the following password to proceed to installation:

    1234567890abcdef1234567890abcdef

    *************************************************************
    *************************************************************
    *************************************************************
    ```

## Usage

This template runs Jenkins on Docker and stores all configurations, plugins, and build history in a Docker volume. You can manage Jenkins through the following commands:

- To start Jenkins:
    ```bash
    docker-compose up -d
    ```

- To stop Jenkins:
    ```bash
    docker-compose down
    ```

- To restart Jenkins:
    ```bash
    docker-compose restart
    ```

## Jenkins Configuration

After accessing Jenkins, you can install plugins, configure jobs, and set up pipelines. All configurations will be saved in the Docker volume, ensuring that your Jenkins instance retains its settings even after restarts.

## Volume Information

This project uses a Docker volume to persist Jenkins data. The `jenkins_home` volume contains all Jenkins configurations, jobs, and build history.

Volume name: **jenkins_home**

By using this volume, Jenkins data remains persistent even if the container is restarted or removed.

If you do not want to track the Jenkins data in your version control system, it is excluded via `.gitignore`.

## Contributing

Contributions are welcome! If you wish to contribute, feel free to fork the repository, create a new branch with your changes, and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


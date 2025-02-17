# cpuminer docker

This repository provides a Docker setup for building and running the [cpuminer-opt](https://github.com/JayDDee/cpuminer-opt) project. The Docker image automates the setup and compilation of cpuminer and runs it with your specified arguments. It supports both ARM and amd64 architectures.


## Table of Contents
- [cpuminer Docker Project](#cpuminer-docker-project)
  - [Table of Contents](#table-of-contents)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Usage](#usage)


## Getting Started

### Prerequisites

Ensure you have Docker installed on your machine. You can download it from [here](https://docs.docker.com/get-docker/).

### Usage

1. **Pull the Docker image:**

    ```sh
    docker pull quay.io/andrijdavid/cpuminer
    ```

2. **Run the Docker container:**

    ```sh
    docker run -v <local_workdir>:/workdir quay.io/andrijdavid/cpuminer <cpuminer-arguments>
    ```
    Replace `<local_workdir>` with the path to your local directory where you want to store the compiled binary.
    Replace `<cpuminer-arguments>` with the necessary arguments for `cpuminer`.

3. **Example:**

    ```sh
    docker run -v $(pwd)/output:/workdir quay.io/andrijdavid/cpuminer -a cryptonight -o stratum+tcp://pool:port -u username -p password
    ```
# Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements or bug fixes.

If you find this project useful and would like to support its development, please consider making a donation to:  bc1qwy7tsgt06jg75w3x2f8x02ahplz8t00zzdkpna
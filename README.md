# Team5_Final_Project
Stat 315 Final Project Repo for team 5, Fall 2025

# Instructions to Run the Docker Environment

## 1. Download the project
Download the ZIP folder from the repository.

## 2. Extract the folder
Unzip the file and place the project folder anywhere on your computer.

## 3. Open a terminal
Navigate to the directory **where the Dockerfile is located**:

```bash
cd path/to/project-folder
```
## 4. Build the Docker image
Run the following command to build the image

```bash
docker build -t football-ml-env:1.0 .
```

## 5. Run the Docker container
Run the container, map the workspace directory, and expose Jupyter Notebook:

```bash
docker run -it -p 8888:8888 -v ${PWD}:/workspace --name football-ml-container football-ml-env:1.0
```

## 6. Open Jupyter Notebook
After the container starts, it will print a link similar to:

```bash
http://127.0.0.1:8888/?token=123243bhnjk34435bj4nk3ml245b4j243n4353n4b35jj
```

Copy the full URL and past it into your browser to open the Jupyter environment

ps - Our 4th code block takes about 10 - 20 min to run
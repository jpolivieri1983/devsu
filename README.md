# Application pipeline for Devsu Practical Assessment

In this public repo you can find the pipeline that takes care of bulding the Python version for the Devsu Practical Assessment and running the different requested tests. 

## Pipeline details

There are several steps declared on the GitHub Actions workflow. 
The pipeline can be triggered manually, on automatically everytime there is a push on the main branch (other branches or events can be also defined).

### Build
- First step is to do the Build, by installing the different components and dependencies required to run the Python application.

### Unit Test
- Second step, are the Unit Tests executed using PyTest, after its installation.

### Static Code Analysis
- Third step, Static Code analysis is performed using Pylint.

### Code Coverage
- Code Coverage analysis is performed by PyTest-cov.

### Vulnerability Scan
- The Vulnerability Scan is executed using CodeQL official action from GitHub Actions marketplace.

### Docker Build & Push
- Final step takes cares of login to Docker Hub, building the Docker Image and uploading it to Docker Hub. Credentials for Docker Hub are stored securely as Secrets on GitHub Actions.






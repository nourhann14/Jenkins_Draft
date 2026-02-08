FROM jenkins/jenkins:lts-slim 
#same image i run from


#switch user, run as root
USER root


#ran command to install docker CLI
RUN apt-get update && \

    apt-get install -y ca-certificates curl gnupg && \

    mkdir -p /etc/apt/keyrings && \

    curl -fsSL https://download.docker.com/linux/debian/gpg \

      | gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \

    echo \

      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \

      https://download.docker.com/linux/debian bookworm stable" \

      > /etc/apt/sources.list.d/docker.list && \

    apt-get update && \

    apt-get install -y docker-ce-cli && \

    rm -rf /var/lib/apt/lists/*


#the switched to the old user
USER jenkins



# to run

# docker build -t jenkins-with-docker .

# docker run -d \

#   --name jenkins \

#   --user root \

#   -p 8080:8080 \

#   -p 50000:50000 \

#   -v /var/run/docker.sock:/var/run/docker.sock \

#   -v jenkins_home:/var/jenkins_home \

#   jenkins-with-docker

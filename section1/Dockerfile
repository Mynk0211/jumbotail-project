# Use a base image with JDK installed
FROM openjdk:11-jdk

# Set environment variables
ENV MAVEN_VERSION=3.8.4
ENV MAVEN_HOME=/usr/share/maven

# Install necessary tools and dependencies
RUN apt-get update && \
    apt-get install -y curl git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Maven
RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
    && curl -fsSL https://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar -xzC /usr/share/maven --strip-components=1 \
    && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

# Install Helm
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 && \
    chmod 700 get_helm.sh && \
    ./get_helm.sh && \
    rm get_helm.sh

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm awscliv2.zip && \
    rm -rf aws

# Set Jenkins user and switch to it
RUN useradd -m -d /home/jenkins -s /bin/bash jenkins
USER jenkins
WORKDIR /home/jenkins

# Optionally, you might want to copy additional files or configurations needed by the agent

# Set entrypoint or command if required
# ENTRYPOINT ["/bin/bash"]


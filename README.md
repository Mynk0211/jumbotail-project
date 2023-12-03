# Jumbotail Project

## Assignment Submission for Jumtotail 

## Table of Contents
- [Section_1_project_setup](#Section_1_project_setup)
- [Section_2_IAC](#Section_2_IAC)
- [Section_3](#Section_3)
- [Section_4](#Section_4)



## Section_1_project_setup

 - Dockerfile for a jenkins container.
 - Doc to create a bare minimum setup to run the 3-tier application.

 ## Section_2_IAC

 - Module to create k8s and dynamodb are separated in two directories.
 - Prod and stage of Dynamodb are separated in two different directories that can be run by placing the ACCESS KEYS and SECRET ACCESS KEYS in the environment variable in the local or can create a github pipeline using github actions for automations. Also can be integrated with tools like atlassian for automations.
 - Module of K8s setup is written and getting called in prod and DR directory. DR can be done by taking continuos backup od etcd server and Restore that in newly created cluster for DR.
 - Skipping the automation of scaling because of my bandwidth and also not having previous experience in that.



## Section_3_K8s_deployments

- canary deployments can be done using ingress.
- Skipping istio part for not having experience and bandwidth.
- Step to create logging and monitoring setup is available in doc.


## Section_4_CICD

- Part 1st is skipped.
- This part can be done using the jenkins and can be pushed to private registry like artifactory using the post build scripts.
- Versioning of docker can also be done using the post build scripts.
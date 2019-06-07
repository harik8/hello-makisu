# hello-makisu [![Build Status](https://travis-ci.com/hari-karthig/hello-makisu.svg?branch=master)](https://travis-ci.com/hari-karthig/hello-makisu)

Makisu is a fast and flexible Docker image build tool designed for unprivileged containerized environments such as Mesos or Kubernetes.

Some highlights of Makisu:
* Requires no elevated privileges or containerd/Docker daemon, making the build process portable.
* Uses a distributed layer cache to improve performance across a build cluster.
* Provides control over generated layers with a new optional keyword `#!COMMIT`, reducing the number of layers in images.
* Is Docker compatible. Note, the Dockerfile parser in Makisu is opinionated in some scenarios.

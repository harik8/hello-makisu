registry="index.docker.io"
credentials="/registry-config/registry.yaml"
image="hariyaa/hello-makisu"
tag="1.0"

pipeline {
    agent {
        kubernetes {
            cloud "kubernetes"
            label "makisu"
        }
    }

    stages {
        stage ("build"){
            steps {
                container("makisu"){
                    sh """
                        /makisu-internal/makisu build \
                        --push=$registry \
                        --registry-config=$credentials \
                        -t=$image:$tag \
                        $WORKSPACE
                    """
                }
            }
        }
    }
}

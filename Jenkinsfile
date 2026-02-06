pipeline {
    agent any

    options {
        skipDefaultCheckout(true)
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Extract customer DB IPs') {
            steps {
                sh '''
                set -e

                if ! command -v jq >/dev/null 2>&1; then
                  echo "ERROR: jq is not installed on this agent"
                  exit 1
                fi

                jq -r '
                  .environments
                  | to_entries[]
                  | select(.key != "shared")
                  | .key as $env
                  | .value
                  | to_entries[]
                  | select(.key != "authorizedUsers")
                  | select(.value["customer-params"] != null)
                  | select(.value["customer-params"].db_ip != null)
                  | "\($env) | \(.key) | \(.value["customer-params"].db_ip)"
                ' customer-config.json
                '''
            }
        }
    }
}




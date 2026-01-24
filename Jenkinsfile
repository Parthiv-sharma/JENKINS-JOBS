pipeline {
    agent { label 'AGENT-1' }

    environment {
        MSSQL_HOST = '10.70.0.71'
        MSSQL_USER = 'syshosis'
        MSSQL_PASS = 'RuVRXVkM7G2G4HS'
    }

    stages {

        stage('Checkout SQL Repo') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Parthiv-sharma/JENKINS-JOBS.git'
            }
        }

        stage('Run Compliance SQL') {
            steps {
                sh '''
                sqlcmd -S ${MSSQL_HOST} -U ${MSSQL_USER} -P ${MSSQL_PASS} -i compliance.sql -N -C
        '''
    }
}
    }
}

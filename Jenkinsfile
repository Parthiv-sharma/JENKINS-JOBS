pipeline {
    agent { label 'AGENT-1' }

    environment {
        MSSQL_HOST = '10.1.2.83'
        MSSQL_USER = 'sa'
        MSSQL_PASS = 'cHarithA1@2'
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
                    sqlcmd -S ${MSSQL_HOST} -U ${MSSQL_USER} -P ${MSSQL_PASS} -i /home/ec2-user/Jenkins-TEST/workspace/JENKINS-JOB-MS-SQL/compliance.sql -N -C
        '''
    }
}
    }
}

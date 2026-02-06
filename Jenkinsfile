pipeline {
    agent any

    stages {
        stage('Read JSON and Print DB IPs') {
            steps {
                script {
                    def jsonText = readFile('customer-config.json')
                    def config = new groovy.json.JsonSlurperClassic().parseText(jsonText)

                    config.environments.each { envName, envData ->

                        // Ignore shared explicitly
                        if (envName == 'shared') {
                            return
                        }

                        echo "========== ENV: ${envName} =========="

                        envData.each { customerName, customerData ->

                            // Ignore authorizedUsers
                            if (customerName == 'authorizedUsers') {
                                return
                            }

                            // Defensive checks
                            if (!customerData.containsKey('customer-params')) {
                                return
                            }

                            def customerParams = customerData['customer-params']

                            if (customerParams.containsKey('db_ip')) {
                                def dbIp = customerParams.db_ip
                                echo "Customer: ${customerName} | DB_IP: ${dbIp}"
                            }
                        }
                    }
                }
            }
        }
    }
}



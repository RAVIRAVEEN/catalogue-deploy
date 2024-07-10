pipeline {
    agent {
       node {
         label 'agent-1' 
     }
}
//    environment {   
//    //    packageVersion = ' '
// //       nexusURL = '172.31.36.245:8081'
// }
    options {
        timeout(time: 1, unit: 'HOURS') 
        disableConcurrentBuilds()
         ansiColor('xterm')
       
    }


   parameters {
        string(name: 'version', defaultValue: ' ', description: 'What is the artifact version?')
        string(name: 'environment', defaultValue: 'dev', description: 'What is the environment?')

  

   }
// //   build
        stages {
          stage('Print version') {
            steps {
                sh """
                    echo "version: ${params.version}"
                    echo "environment: ${params.environment}"
                """
            }
        }
          stage('init') {
            steps {
                sh """
                   cd terraform 
                   terraform init --backend-config=${parms.envinorment}/backend.tf
                   -reconfigure
                    
                """
            }
        }


         }
    
    
    //  post build 
     post { 
        always { 
            echo 'I will always say Hello again!'
             deleteDir()
        }
     

        failure {
            echo ' this runs when pipeline is failed used generally to send alerts'
        }
      
       success { 
            echo 'I will always say Hello when pipeline is success'
        }
   
    }

}
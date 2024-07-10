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
       
    }


   parameters {
        string(name: 'version', defaultValue: ' ', description: 'What is the artifact version?')
        string(name: 'environment', defaultValue: ' dev ', description: 'What is the environment?')

  

   }
// //   build
//     stages {
//         stage('get the version') {
//             steps {
//                 script {
//                         def packageJson = readJSON file: 'package.json'
//                             packageVersion = packageJson.version
//                             echo "application version: $packageVersion"
//                }
//             }
//         }
//         stage('install dependencies') {
//             steps {
//                     sh """

//                      npm install

//                     """
//             }
//         }
//         stage('build') {
//             steps {
//                 sh  """

//                  ls -la
//                  zip -q -r catalogue.zip ./* -x ".git" -x "*.zip"
//                  ls -ltr

//                 """
//             }
//         }

//         stage ( 'publish artifact') {

//          steps {
//                   nexusArtifactUploader (
//                   nexusVersion: 'nexus3',
//                   protocol: 'http',
//                   nexusUrl: "${nexusURL}",
//                   groupId: 'com.roboshop',
//                   version: "${packageVersion}",
//                   repository: 'catalogue',
//                   credentialsId: 'nexus-auth',
//                   artifacts: [
//                  [artifactId: 'catalogue',
//                  classifier: '',
//                  file: 'catalogue.zip',
//                  type: 'zip']
//         ]
//      )
//          }

    
          //  }
        stage('print version') {

            steps{
                sh """
                    
                echo "version: ${params.version}"

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


pipeline{

    agent any

    stages{

    
        stage('Testing Stage') {

            steps{

                rspec spec/models/task_spec.rb


            }

        }


        stage('Deployment Stage'){

            steps{

                git push origin main

            }

        }


    }

}
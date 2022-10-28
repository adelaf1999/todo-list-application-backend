pipeline{

    agent any

    stages{

        stage('Compile Stage'){

            steps{

                RAILS_ENV=production rails assets:precompile


            }

        }


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
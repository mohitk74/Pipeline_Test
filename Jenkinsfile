// Declarative Pipeline
pipeline {
   agent any
   environment {
       PATH = "C:\\Program Files\\MATLAB\\R2023b\\bin;${PATH}"   // Windows agent 
   }
    stages {
        stage('Pehla_Kadam') {
            steps {
               runMATLABCommand(command: 'disp("Hello World!")')
            }       
        }
        stage('Simulation') {
            steps {
                runMATLABCommand(command: 'simulation_check')
            }       
        }    
       stage('Jmaab_check') {
            steps {
                runMATLABCommand(command: 'jmaab_check')
            }       
        }
       stage('Code_Generation') {
            steps {
                runMATLABCommand(command: 'code_generation')
            }       
        }
       stage('Test_Harness') {
            steps {
                runMATLABCommand(command: 'test_Harness_Automation')
            }       
        }
       stage('Antim') {
            steps {
               runMATLABCommand(command: 'disp("Good Work Champ")')
            } 
    }
   } 

}

@Library('piper-library-os') _

node() {
  
  def check
  stage('prepare') {
      check=checkout scm
      echo "${check}"
      setupCommonPipelineEnvironment script:this
      checkChangeInDevelopment script: this,changeDocumentId:'8000004822'     
      echo ">>>>>>>${check.GIT_COMMIT}"
       }

 
}

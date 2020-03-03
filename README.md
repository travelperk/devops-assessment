# DevOps Assessment Homework

This is TravelPerk's assessment homework for DevOps candidates. Please read
this document thoroughly and don't hesitate to contact us if you have any doubt.

## Prepare the assessment

To do this assessment follow these preliminary steps:

  * Fork this repo in your GitHub account
  * Set '[x] Require status checks to pass before merging' on master branch in Project Settings -> Branches
  * Review the code here and ask any questions: better clearing doubts and misunderstandings early on
  

## Run the app

In a virtualenv, run:

    python setup.py install
    FLASK_APP=hello flask run

## Tasks to complete

Now you have the app running, it's your turn to work.

### Deploy the service on AWS Fargate

   * Dockerize the service
   * Connect to https://travelperk-candidates.signin.aws.amazon.com/console
     and sign in with the credentials you got from our HR team and deploy a
     cluster with a single service and 2 replicas of this application (i.e. 
     with one task definition and two running tasks).
   * Terraform the deployment. Please use this repository for references [devops-assessment-terraform][1].  
     Check the instructions there for general info and to know what services and permissions are available.

### Create a CI/CD deployment

Use any tool you have access to (we recommend GitHub actions, because it's free, very easy and fast
to configure... but up to you) to build a CI/CD over the service you have deployed.

#### Flow:

  * Whenever a Pull Request is created, a task testing the application should 
    start, and not allowing to merge if the test fails. (Another task for code 
    linting is a plus).
  * On merge, the AWS service should redeploy automatically with the new changes.

## Important Notes

  * We recommend to try to run the application dockerized locally on your computer
    before starting the first task.
  * When doing the CI/CD part: DON'T CREATE PULL REQUEST ON THE ORIGINAL REPOSITORY.
    This is the default behavior in GitHub and it will expose your work to others!
  * For the same reason, please avoid calling your repo `travelperk-whatever`.
  * We are still calibrating the assessment, and you may not have time
    to finish everything in the allocated time. This is fine. If it takes more than 4 hours you can leave the work as
    it is and write down what your next steps would be. If you want to spend
    two days or a week, up to you. But we don't want you to waste more of you
    time.
  * This is not a speed test. Please don't worry if you don't finish it.

 **Many thanks for your time and good luck!**

[1]: https://github.com/travelperk/devops-assessment-terraform

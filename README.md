# DevOps Assessment Homework

This is the TravelPerk assessment homework for DevOps candidates. Please read
this document thoroughy and don't hesitate to contact us for any doubt.

## Prepare the assessment

To do this assesment follow these steps:

  * Fork this repo in your GitHub account
  * Set '[x] Require status checks to pass before merging' on master branch in Project Settings -> Branches

## Run the app

In a virtualenv, run:

    python setup.py install
    FLASK_APP=hello flask run

## Tasks

### Deploy the service on AWS Fargate

   * Dockerize the service
   * Connect to https://travelperk-candidates.signin.aws.amazon.com/console
     and sign in with the credentials you got from our HR team and deploy a
     cluster with a single service and 2 replicas of this application (i.e. 
     with one task definition and two running tasks).
   * We should be able to request the application using the DNS of an
     external load balancer on port 80. (443 not needed)
   * Terraform the deployment. We love AWS service, but we don't like AWS
     console and we don't like manual work. Also, it will help us to wipe your
     work after the assessment.

### Create a CI/CD deployment

Use any free tool (we recommend GitHub actions, because it's very easy and fast
to configure, but up to you) to build a CI/CD over the service you have deployed.

  * Whenever a Pull Request is created, a task testing the application should 
    start, and not allowing to merge if the test fails. (Another task for code 
    linting is a plus).
  * On merge, the AWS service should redeploy automatically with the new changes.

## Important Notes

  * We recommend to try to run the application dockerized in your computer
    before starting the first task.
  * Right now only 2 replicas are accepted due to service limits. Don't try to
    deploy more.
  * Keep in mind that Fargate needs to reach outside the VPC to download the
    containers from ECR. A `CannotPullContainerError` is not only a permission
    error. There are two ways to achieve this, both seem fine to us.
  * There is a role called `ecsTaskExecutionRole` available to be used as
    execution role of the tasks.
  * When doing the CI/CD part: DON'T PULL REQUEST OVER THE ORIGINAL REPOSITORY.
    This is the default behavior in GitHub and it will expose your work to others!
  * For the same reason, please avoid calling your repo `travelperk-whatever`.
  * You can put your terraform code in the forked repository or create a new
    one. In any case, you don't have to run CI actions on terraform code. Just
    focus on testing application code. But you can use terraform to deploy new
    versions of the application code if you wish so.
  * Local terraform state file is good enough for this exercise. Don't set a
    shared state file. Actually, you won't have permissions for it.
  * We are still calibrating the assessment, so if it takes more than 4 hours
    leave the work as it is and write down what your next steps would be . We'll
    evaluate it as finished in the next interview.
  * Many thanks for your time and good luck!

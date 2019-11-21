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
   * Connect to `https://travelperk-candidates.signin.aws.amazon.com/console`
     and sing in with the credentials you got from our HR team and deploy a
     cluster with a single service with 2 replicas of this application.
   * We should be able to request the application using the DNS of an
     external load balancer on port 80. (443 not needed)
   * Terraform the deployment. We love AWS service, but we don't like AWS
     console and we don't like manual work. Also, it will help us to wipe your
     work after the assessment.

### Create a CI/CD deployment

Use any free tool (we recommend GitHub actions, because it very easy and fast
to contigure, but up to you) to build a CI/CD over the service you have deployed.

  * On any Pull Request, a task testing the application should start, not
    leaving to merge if the test fails. (Another task for linting is a plus)
  * On merge, the service should redeploy automatically with the new changes.

## Important Notes

  * Right now only 2 replicas are accepted due service limits. Don't try to deploy more.
  * Keep in mind that Fargate needs to reach outside the VPC to download the
    containers from ECR. A `CannotPullContainerError` is not only a permission
    error. There are two ways to achieve this, both seems fine to us.
  * There is a role called `ecsTaskExecutionRole` available to be used as
    execution role of the tasks.
  * When doing the CI/CD part: DON'T PULL REQUEST OVER THE ORIGINAL REPOSITORY.
    Is the default behavior in GitHub and will expose your work to others!
  * For the same reason, avoid call your repo `travelperk-whatever`
  * We are still calibrating the assessment, so if it takes more than 4 hours,
    leave the work as it is and write down what would be your next steps. We'll
    evaluate it as finished in the next interview.
  * Many thanks for your time!

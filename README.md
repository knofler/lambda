
    Global CLI Install:
      $ npm i -g serverless

    Setup AWS Profile

      - provider:
         - name: aws
         - runtime: nodejs8.10
         - profile: femasters
         - region: ap-southeast-2
         - stage: dev

    Deploy a Service:

      serverless deploy -v
    
    Deploy the Function:

      serverless deploy function -f hello
    
    Invoke the Function on AWS:

      serverless invoke -f hello -l

    Invoke the Function on your machine:

      serverless invoke local -f hello -l

    Fetch the Function Logs:

      serverless logs -f hello -t
    
    Remove the Service:

      serverless remove
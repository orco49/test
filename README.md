# Integrating the awscli interface using Okta:

## Installation and Configuration:

  - Download the following *tar.gz* file [here](https://github.com/oktadeveloper/okta-aws-cli-assume-role/releases)
         
    - Run the following commands:
        ```sh
            tar -xvzf okta-aws-cli-assume-role-2.0.0.tar.gz
            okta-aws-cli-assume-role-2.0.0/bin/install.sh -i
        ```
    - In the ~/.okta folder, edit the file named config.properties:
        ```sh
            vim ~/.okta/config.properties
        ```
        - OKTA_ORG is the FQDN of your Okta org (such as lemonade.okta.com)
        - OKTA_AWS_APP_URL is the AWS App Embed URL from the General tab of your AWS application in your Okta org, please use the following: https://lemonade.okta.com/home/amazon_aws/0oa9qbab5X7BfzpF1356/272
    
       - Example of ~/.okta/config.properties file:
        ```sh
            #OktaAWSCLI
            OKTA_ORG=lemonade.okta.com
            OKTA_AWS_APP_URL=https://lemonade.okta.com/home/amazon_aws/0oa9qbab5X7BfzpF1356/272
            OKTA_USERNAME=or@lemonade.com
        ``` 
    - Copy the Okta's scripts to your PATH:
      ```sh
        cp -rv ~/.okta/bin/* /usr/local/bin/
      ```

## Execution

###### Obtain Assertion and Request Token
  
  - Run the following command:
    ```sh
       awscli
    ```
 - Enter the password of a valid Okta user assigned to the AWS Okta app.

 - If applicable, enter an MFA code

 - Select the AWS role you would like to assume (among all the AWS roles the user was assigned to in Okta)

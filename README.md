# Integrating the awscli interface using Okta:

## Prerequisites 
Verify you've Java installed

## Installation and Configuration:

  - Download the following *okta-awscli* bash script [download this](https://raw.githubusercontent.com/orco49/test/master/okta-awscli.sh)         

## Script usage:

- The script requires 2 arguments: 
    1) package version (for example 2.0.0) 
    2) your e-mail address

- Verify the package version [here](https://github.com/oktadeveloper/okta-aws-cli-assume-role/releases)

#Example - how to run the script
```sh
./okta-awscli.sh 2.0.0 or@lemonade.com
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

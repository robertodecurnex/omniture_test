Omniture Test
=============

***note:*** *This gem was build to test a really basic scenario. Don't be afraid to share your needs so we can build somethings really usefull.*

Usage
-----

### Install the Gem ###

    gem install omniture_test

### Declare your targets ###

Create a targets.yml or a targets.json file with the urls, cookies and omniture values to test

**targets.yml**

    targets:
    - cookies:
        "X-COOKIE-KEY": "VALUE"
      url: "http://example.com/something_here"
      omniture_variables: 
        "EXPECTED_VARIABLE_NAME": "VARIABLE_EXPECTED_VALUE"
    - cookies:
        "X-COOKIE-KEY": "VALUE"
      url: "http://example.com/something_here"
      omniture_variables: 
        "EXPECTED_VARIABLE_NAME": "VARIABLE_EXPECTED_VALUE"


**targets.json**

    {
      "targets": [
        {
          "cookies": {
            "X-COOKIE-KEY": "VALUE"
          },
          "url": "http://example.com/something_here",
          "omniture_variables": {
            "EXPECTED_VARIABLE_NAME": "VARIABLE_EXPECTED_VALUE"
          }
        },
        {
          "cookies": {
            "X-COOKIE-KEY": "VALUE"
          },
          "url": "http://example.com/something_here",
          "omniture_variables": {
            "EXPECTED_VARIABLE_NAME": "VARIABLE_EXPECTED_VALUE"
          }
        },
      ]
    }

### Run it ###

From your terminal:

    omniture_test
    
### Check the results ###

It's just an RSpec test so the report should be self-explanatory.


*** Settings ***
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file
Resource          Keywords/login.robot
Resource        Keywords/readTestData.robot


*** Test Cases ***
Login User with Password
    Read Test Data
    # Connect to Server
    # Login User            ironman    1234567890
    # Verify Valid Login    Tony Stark
    # [Teardown]    Close Server Connection

# Denied Login with Wrong Password
#     [Tags]    negative
#     Connect to Server
#     Run Keyword And Expect Error    *Invalid Password    Login User    ironman    123
#     Verify Unauthorised Access
#     [Teardown]    Close Server Connection
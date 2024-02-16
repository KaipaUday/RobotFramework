*** Settings ***
Documentation     Register for a course on moodle with an enrollment key
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://moodle2.tu-ilmenau.de/course/view.php?id=4780    #1260 #for test; 4300 for group b
${BROWSER}        Chrome    #Safari

*** Test Cases ***
Valid Login
    Login to page   udka5271    Lucifer@1234     #tstname    pwd 
    # Register
    [Teardown]    Close Browser

*** Keywords ***
Login to page
    [Arguments]    ${username}    ${password}
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Input Text    id:username    ${username}
    ${password}    Set Variable   ${password}\n
    Log     ${password} 
    Input Text    id:password    ${password}
    # Wait Until Element Is Visible    xpath://*[text()="Log in"]
    # Click Element   xpath://*[text()="Log in"]

Register
    ${e1}    Get WebElement   name:enrolpassword
    Wait Until Element Is Visible    ${e1}
    Input Text     ${e1}    RCSE_SS23
    ${e2}    Get WebElement    id:id_submitbutton
    Wait Until Element Is Visible    ${e2} 
    Click Element    ${e2}


#sudo crontab -e * * * * * /Users/uk/Projects/Robot/cron.sh >> /Users/uk/Projects/Robot/backup.log 2>&1
# 1 1 21 3 * /Users/uk/Projects/Robot/cron.sh >> /Users/uk/Projects/Robot/backup.log 2>&1
# crontab code

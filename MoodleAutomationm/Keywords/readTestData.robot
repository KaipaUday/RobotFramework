*** Settings ***
Library    load_data.py

*** Keywords ***
Read Test Data
    ${file_path}    Set Variable    /Users/uk/Documents/GitHub/RobotFramework/MoodleAutomationm/TestData/import_var.txt
    ${test_data}    Read Test Data From File    ${file_path}
    ${test_data}    Process Test Data    ${test_data}
    [Return]    ${test_data}

Process Test Data
    [Arguments]    ${test_data}
    ${test_data}    Convert To String    ${test_data}
    ${data_list}    Evaluate    [item.split(':') for item in "${test_data}".split(',')]
    ${data_list}    Create List    ${data_list}
    ${processed_data}    Create Dictionary    ${data_list}
    [Return]    ${processed_data}
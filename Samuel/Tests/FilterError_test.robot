*** Settings ***
Library  SeleniumLibrary

Resource    ../Config.robot
Resource    ../PageObjects/Home_page.robot
Resource    ../PageObjects/ProductLister_page.robot

Test Setup  Configure and Open Browser
Test Teardown  Close Browser

*** Test Cases ***
Mens Shoes Filter error
    Wait Until Page Contains Element    ${mens_shoes_link}          15 Seconds
    Click Element                       ${mens_shoes_link}
    Wait until Element Is Visible       ${all_mens_shoes_link}      15 Seconds
    Click Link                          ${all_mens_shoes_link}
    Click Element                       ${sortby_field}
    Press Keys                          ${sortby_field}             p
    Press Keys                          ${sortby_field}             RETURN
    Click Element                       ${page_2_link}
    Page Should Not Contain             £25.00

*** Keywords ***

    
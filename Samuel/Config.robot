*** Variables ***
${Browser}          chrome
${OverrideURL}      https://www.samuel-windsor.co.uk/
${Delay}            0.5s

*** Keywords ***
Configure and Open Browser
    Open Browser          ${OverrideURL}    chrome
    Set Selenium Speed    .25 Seconds




Configure and Open Browser OLDER VERSION
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    test-type
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    #Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Selenium Speed    .25 Seconds

Set Window
    #Maximize Browser Window
    Set Window Size    1024  768  #ipad5
    #Set Window Size    1366  1024  #ipadPro

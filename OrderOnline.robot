*** Settings ***
Library    SeleniumLibrary 
    
*** Variables ***
${url1}     https://app-staging.oexpress.id 
${url2}    https://app-staging.oexpress.id/register 
${url3}    https://app-staging.oexpress.id/corp/register
${browser}    chrome

*** Test Cases ***
Valid Email Login
    Open Browser     ${url1}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Input Text    //input[@placeholder='Enter your email']    rezie.novina@gmail.com
    Input Text     //input[@placeholder='Enter your password']    orderonline123
    Click Element    //i[@class='uil-eye']
    Sleep    10s
    Click Button   //button[normalize-space()='Masuk']
    Close Browser

Invalid Email Login
    Open Browser     ${url1}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Input Text    //input[@placeholder='Enter your email']    rezie.novina
    Input Text     //input[@placeholder='Enter your password']    orderonline123
    Click Element    //i[@class='uil-eye']
    Sleep    10s
    Click Button   //button[normalize-space()='Masuk']
    Close Browser

Valid Register
    Open Browser     ${url1}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Click Link    //a[@class='text-muted ms-1']
    Sleep    5s
    Input Text      //input[@placeholder='Enter your name']    rezie novina
    Input Text    //input[@placeholder='Enter your email']    rezie.novina@gmail.com
    Input Text     //input[@placeholder='Enter your password']    orderonline123
    Input Text    //input[@placeholder='Enter your No. Handphone']   085210757422
    Sleep    5s
    Click Button   //button[@class='btn btn-primary']
    Close Browser

Invalid Register
    Open Browser     ${url1}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Click Link    //a[@class='text-muted ms-1']
    Sleep    5s
    Input Text      //input[@placeholder='Enter your name']    1
    Input Text    //input[@placeholder='Enter your email']    rezie.novina
    Input Text     //input[@placeholder='Enter your password']    orderonline123
    Input Text    //input[@placeholder='Enter your No. Handphone']   085
    Sleep    5s
    Click Button   //button[@class='btn btn-primary']
    Close Browser

Valid Forget Email 
    Open Browser     ${url1}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Click Link    //a[@class='text-muted float-end']
    Sleep    5s
    Input Text    //input[@placeholder='Enter your email']    rezie.novina@gmail.com
    Sleep    5s
    Click Button   //button[@class='btn btn-primary']
    Close Browser

Invalid Forget Email 
    Open Browser     ${url1}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Click Link    //a[@class='text-muted float-end']
    Sleep    5s
    Input Text    //input[@placeholder='Enter your email']    rezie.novina
    Sleep    5s
    Click Button   //button[@class='btn btn-primary']
    Close Browser

Valid Onboarding Reguler User
    Open Browser     ${url2}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Input Text      //input[@placeholder='Enter your name']    rezie novina
    Input Text    //input[@placeholder='Enter your email']    rezie.novina@gmail.com
    Input Text     //input[@placeholder='Enter your password']    orderonline123
    Input Text    //input[@placeholder='Enter your No. Handphone']   085210757422
    Sleep    5s
    Click Button   //button[@class='btn btn-primary']
    Close Browser

Invalid Onboarding Reguler User
    Open Browser     ${url2}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Input Text      //input[@placeholder='Enter your name']    r
    Input Text    //input[@placeholder='Enter your email']    rezie.novina
    Input Text     //input[@placeholder='Enter your password']    orderonline123
    Input Text    //input[@placeholder='Enter your No. Handphone']   08522
    Sleep    5s
    Click Button   //button[@class='btn btn-primary']
    Close Browser

Valid Onboarding Corporate User
    Open Browser     ${url3}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Input Text      //input[@placeholder='Enter your name']    rezie novina
    Input Text    //input[@placeholder='Enter your email']    rezie.novina@gmail.com
    Input Text     //input[@placeholder='Enter your password']    orderonline123
    Input Text    //input[@placeholder='Enter your No. Handphone']   085210757422
    Sleep    5s
    Click Button   //button[@class='btn btn-primary']
    Close Browser

Invalida Onboarding Corporate User
    Open Browser     ${url3}   ${browser}
    Maximize Browser Window
    Sleep    5s
    Input Text      //input[@placeholder='Enter your name']    r
    Input Text    //input[@placeholder='Enter your email']    rezie.novina
    Input Text     //input[@placeholder='Enter your password']    orderonline123
    Input Text    //input[@placeholder='Enter your No. Handphone']   085
    Sleep    5s
    Click Button   //button[@class='btn btn-primary']
    Close Browser

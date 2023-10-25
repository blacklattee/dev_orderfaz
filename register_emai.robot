*** Settings ***
Library    Selenium2Library

*** Variables ***

${BROWSER}        chrome
${full_name}      Testing Akun
${phone_number}   082114445616
${password}       @Muhammad12
${text_email}         xpath=/html//input[@id='email']
${text_full_name}     xpath=/html//input[@id='name']
${text_phone_number}  xpath= /html//div[@id='app']//form/div[1]/div[3]/input[@type='text']
${text_password}      xpath=/html//input[@id='password']
${button_daftar2}     xpath=//*[@id="app"]/div/div[3]/form/div[2]/button[1]
${button_daftar1}     xpath=/html//div[@id='app']//form//a[@href='/register']
${button_otp_verify}    xpath=/html//div[@id='app']//form//button[@type='submit']
${element_email}      xpath=///label[@innertext='Email ']
${LINK}           https://web.orderfaz.com/
${link_otp}       https://web.orderfaz.com/otp
${otp_1}          xpath=//div[@id='app']//form/div[1]/div[1]/div/div/div[1]/input[@type='password']
${otp_2}          xpath=//div[@id='app']//form/div[1]/div[1]/div/div/div[2]/input[@type='password']
${otp_3}          xpath=//div[@id='app']//form/div[1]/div[1]/div/div/div[3]/input[@type='password']
${otp_4}          xpath=//div[@id='app']//form/div[1]/div[1]/div/div/div[4]/input[@type='password']

*** Test Cases ***
open_browser
    Open Browser    ${LINK}    ${BROWSER}
    Maximize Browser Window
    Sleep    3
Click Daftar
    Click Element    ${button_daftar1}
    Sleep    3
    Wait Until Page Contains    Email
Input Data Email
    Input Text    ${text_email}    testing8indo@harakirimail.com
Input Data Full Name
    Input Text    ${text_full_name}    ${full_name}
Input Data Phone Number
    Input Text    ${text_phone_number}    ${phone_number}
Input Data Password
    Input Password    ${text_password}    ${password}
Click Button Daftar
    Click Button    ${button_daftar2}
Verify OTP
    Sleep    10
    Click Button    ${button_otp_verify}
    Sleep    5
    #Go To    ${link_otp}
    #Sleep    3
    #Input Password    ${otp_1}    1
    #Input Text    ${otp_2}    2
    #Input Text    ${otp_3}    3
    #Input Text    ${otp_4}    4
   Close Browser
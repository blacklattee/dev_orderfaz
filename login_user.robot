*** Settings ***
Library    Selenium2Library

*** Variables ***

${BROWSER}        chrome
${full_name}      Testing Akun
${phone_number}   082114445616
${password}       @Muhammad12
${text_email}         xpath=/html//input[@id='email']
${text_email_login}   xpath=/html//div[@id='app']//form//input[@type='text']
${text_password_login}    xpath=/html//input[@id='password']
${text_full_name}     xpath=/html//input[@id='name']
${text_phone_number}  xpath= /html//div[@id='app']//form/div[1]/div[3]/input[@type='text']
${text_password}      xpath=/html//input[@id='password']
${button_daftar2}     xpath=//*[@id="app"]/div/div[3]/form/div[2]/button[1]
${button_daftar1}     xpath=/html//div[@id='app']//form//a[@href='/register']
${button_otp_verify}  xpath=/html//div[@id='app']//form//button[@type='submit']
${button_masuk_login}  xpath=//*[@id="app"]/div/div[3]/form/div[2]/button[1]
${button_menu_profile}  xpath=//*[@id="headlessui-menu-button-3"]
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
Input Data Email
    Input Text    ${text_email_login}    testing8indo@harakirimail.com
Input Data Password
    Input Password    ${text_password_login}    ${password}
    Sleep    3
Click Button Masuk
    Click Button    ${button_masuk_login}
    Sleep    3

   Close Browser
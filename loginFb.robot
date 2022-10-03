*** Settings ***
Library        Selenium2Library

*** Variables ***
${browser}        chrome
${url}            https://www.facebook.com

*** Keywords ***
open facebook
    Open Browser    ${url}    ${browser}

Finish TestCase
    Close Browser
    
*** Test Cases ***
1. เข้าสู่ระบบ Facebook
    open facebook
    Page Should Contain       เข้าสู่ระบบ
    Page Should Contain Link    //div[a[text()='ลืมรหัสผ่านใช่หรือไม่']]/a
    Page Should Contain Element    //div[a[text()='สร้างบัญชีใหม่']]/a
2. เข้าสู่ระบบ > Field อีเมลหรือหมายเลขโทรศัพท์มือถือ
    Input Text    //input[@name='email']    tyjaikla8794@gmail.com
    Sleep    3s
3. ตรวจสอบกรณีที่กรอกข้อมูลเป็นตัวเลขเบอร์โทรศัพท์เท่านั้น
    Input Text    //input[@name='email']    0631568459
    Sleep    3s    
End
    Finish TestCase
*** Settings ***
Library  Selenium2Library


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome


End web Test
    sleep  2

    Close Browser

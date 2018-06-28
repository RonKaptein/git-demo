*** Settings ***
Library  Selenium2Library


*** Keywords ***
Verify Product Added
    Wait until Page Contains    Added to Cart

Proceed to Checkout
    Click Link  id=hlb-ptc-btn-native
    wait until page contains    Some text to verify
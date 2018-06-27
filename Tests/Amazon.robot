*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot

Library Selenium2Library


Test Setup Begin Web Test
Test Teardown End Web Test

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke Search Logged
    Common.Begin Web Test
    Amazon.Search for products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout
    Common.End Web Test

uj bongeeszo
    Open Browser  www.google.com  chrome
    sleep  2
    sleep  1
    sleep  1
    Maximize Browser window





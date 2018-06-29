*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


# Copy/paste the below line to Terminal window to execute
# pybot -d results tests/amazon.robot

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke Search
    Amazon.Search for Products

Logged out user can view a product
    [Tags]   Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results

Logged out user can add product to chart
    [Tags]  Smoke
    Amazon.Search for products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke Search Logged
    Common.Begin Web Test
    Amazon.Search for products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout
    Common.End Web Test

Feature Test 1
    Log     Doing feature 1








*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot

Test    Setup   Begin Web Test
Test    Teardown    End Web Test
# Copy/paste the below line to Terminal window to execute
# pybot -d results tests/amazon.robot
*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke Search
    Amazon.Search for Products

Logged out user can view a product
    [Tags]   Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    AmazonApp.Search for products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user must sign in to check out
    [Tags]      Smoke   Checkout
    Amazon.App.Search for Products
    Amazon.App.Select Product from Search Results
    Amazon.App.Begin Checkout











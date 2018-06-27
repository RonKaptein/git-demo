*** Settings ***
Library  Selenium2Library

*** Keywords ***
Search for products
    go to  http://www.amazon.com
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458

    click button  xpath =//*[@id="nav-search"]/form/div[2]/div/input
    sleep  30
    #wait until page contains  results for "Ferrari 458"

Select Product from Search Results
    click link  css=#result_0 a.s-access-detail-page
    wait until page contains  Back to search results
Add Product to Cart
    click button  id=add-to-cart-button
    #wait until page contains  1 item added to Cart                                  jbvirhbwivf

Begin Checkout
    click link  Proceed to Checkout
    sleep  1
    page should contain element  ap_signin1a_pagelet_title
    element text should be  ap_signin1a_pagelet_title  Sign In
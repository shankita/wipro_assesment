*** Settings ***
Library			SeleniumLibrary
Resource  PageObjects/TrackingPage.resource
Resource  PageObjects/HomePage.robot
Resource  PageObjects/SupportPage.resource
Resource  PageObjects/ShippingPage.resource


Suite Teardown    Close All Browsers
Suite Setup  Login to fedex home page



*** Variables ***



*** Test Cases ***
Test Case for fedex home page
    [Documentation]  This Test case is to verify Fedex
    [Tags]  Home   P2
    wait until page contains  fedex


Test case for fedex shipping page
    [Documentation]  This Test case is to verify shipping page
    [Tags]  shipping   P2
    fedex shipping page


Test Case for fedex tracking page 
    [Tags]  tracking   P2
    fedex tracking page   ${Tracking_ID} 


Test Case for fedex Support page 
    [Tags]  support   P2
    fedex support page




*** Settings ***
Library                SeleniumLibrary

Resource               ../Resources/commonfunctionality.robot
Resource               ../Resources/PageObjects/Login.robot
Resource               ../Resources/PageObjects/DataDriven.robot

Suite Setup            Run Keywords  Open Page  
...                    Verify Login Page Loaded
Suite Teardown         Close Page

Test Template          Category


*** Variables ***
${DomesticMagazines}   xpath://*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]/div[2]/a[1]
${ForeignMagazines}    xpath://*[@id="__next"]/div[1]/div[3]/div[3]/div[1]/div[1]/div[2]/a[2]


*** Test Cases ***
This is DigiKala_DataDriven for Domestic Magazines  ${DomesticMagazines}
This is DigiKala_DataDriven for Foreign Magazines   ${ForeignMagazines}


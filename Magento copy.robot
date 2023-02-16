*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${emptyText}    

*** Test Cases ***


Test Checkout
# Partie redondonte à supprimer 
    Open Browser    https://magento.softwaretestingboard.com/    chrome
    Wait Until Element Is Visible    id:ui-id-4    10 
    Click Element   id:ui-id-4    
  
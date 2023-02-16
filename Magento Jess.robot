*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://magento.softwaretestingboard.com/
${browser}    Chrome
*** Test Cases ***
Accèss au catalogue
    Open Browser    ${url}    ${browser}
    Wait Until Element Is Visible    id:ui-id-4    15
    Click Element        id:ui-id-4
    location should be    https://magento.softwaretestingboard.com/women.html
    Wait Until Element Is Visible    class:item    10
    Click Element  xpath://a[contains(text(),"Tops")]
    #Location Should Be    https://magento.softwaretestingboard.com/women/tops-women.html
Ajouter au panier
    Wait Until Element Is Visible    id:option-label-size-143-item-168    15
    Click Element    id:option-label-size-143-item-168
    Click Element    id:option-label-color-93-item-60
    Wait Until Element Is Enabled    class:actions-primary
    Click Element    class:actions-primary 
    Wait Until Page Contains Element    class:price-excluding-tax    15
    Click Element   class:minicart-wrapper
    sleep    20
    Page Should Contain    Breathe-Easy Tank

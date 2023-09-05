*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/registration_variables.robot
Resource    ../variables/common_variables.robot
Resource    ../page_objects/register_po.robot

*** Keywords ***
Open Registration Page
    Open Browser        ${reg_URL_1}    ${BROWSER}

#Register with Valid Information
Input Contact Information
    Input Text      ${txt_regFirstName}     ${reg_ValidFirstName}
    Input Text      ${txt_regLastName}      ${reg_ValidLastName}
    Input Text      ${txt_regPhoneNO}       ${reg_ValidPhoneNo}
    Input Text      ${txt_regEmail}         ${reg_validEmail}


Input Mailing Information
    Input Text      ${txt_regAddress}       ${reg_ValidAddress}
    Input Text      ${txt_regCity}          ${reg_ValidCity}
    Input Text      ${txt_regState}         ${reg_ValidState}
    Input Text      ${txt_regPostCode}      ${reg_ValidPostalCode}
    Select From List By Label   ${select_regCountry}    INDIA

Input User Information
    Input Text      ${txt_regUserName}        ${reg_ValidUsername}
    Input Text      ${txt_regPassword}    ${reg_ValidPassword}
    Input Text      ${txt_regConfirmPassword}   ${reg_ValidConformPassword}

Submit Registration
    Click Element    ${txt_regSubmit}




########################################################
#Open Second URL Registration Page
Open Second Registration Page
    Open Browser        ${reg_URL_2}        ${BROWSER}

Second Registration Informatipon
#Input First Name
    Input Text      ${txt_1_regFirstName}       ${reg_ValidFirstName}

#Input Last Name
    Input Text      ${txt_1_regLastName}        ${reg_ValidLastName}

#Input Email
    Input Text      ${txt_1_regEmail}       ${reg_validEmail}

#Input Password
    Input Text      ${txt_1_regPassword}        ${reg_ValidPassword}

#Input Conform Password
    Input Text      ${txt_1_regConfirmationPassword}    ${reg_ValidConformPassword}


#Select Capcha Iframe
#    Select Frame        xpath:(//iframe[@title='reCAPTCHA'])[1]     #${Iframe_select_capcha_1_reg}
#    Unselect Frame

Select Capcha
    Click Element       ${select_capcha_1_reg}

Click SignUp Button
    Click Button        ${txt_1_regSignUp}
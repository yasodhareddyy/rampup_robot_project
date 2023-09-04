*** Settings ***
Library    SeleniumLibrary
Resource    Robot_Frame_work/rampup_task_robot/myproject_root_folder/frame_work/resources/variables/registration_variables.robot
Resource    Robot_Frame_work/rampup_task_robot/myproject_root_folder/frame_work/resources/variables/common_variables.robot

*** Variables ***
${txt_regFirstName}     name:firstName
${txt_regLastName}      name:lastName
${txt_regPhoneNO}       name:phone
${txt_regEmail}         name:userName

${txt_regAddress}   name:address1
${txt_regCity}      name:city
${txt_regState}     name:state
${txt_regPostCode}    name:postalCode
${select_regCountry}    name:country

${txt_regUserName}  name:email
${txt_regPassword}  name:password
${txt_regConfirmPassword}   name:confirmPassword
${txt_regSubmit}    xpath://input[@name='submit']

######################
${txt_1_regFirstName}       id:name
${txt_1_regLastName}       id:last_name

${txt_1_regEmail}          id:email
${txt_1_regPassword}          id:password
${txt_1_regConfirmationPassword}          id:password_confirmation
#${Iframe_select_capcha_1_reg}      xpath:(//iframe[@title='reCAPTCHA'])[1]
${select_capcha_1_reg}      xpath://span[@id='recaptcha-anchor']
${txt_1_regSignUp}      xpath://input[@value='Sign Up']

######################

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
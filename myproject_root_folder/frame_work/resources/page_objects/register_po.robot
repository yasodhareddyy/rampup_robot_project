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



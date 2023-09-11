*** Variables ***

#  HR-OS Login Page Xpaths
${xpath_clickTerralogicLogin}    xpath://div[text()='Terralogic Login']
${xpath_id_txtEmail}        id:identifierId
${xpath_ClickElementNext}       xpath://span[.='Next']
${xpath_name_txtPassword}   name:Passwd

# Top menu of HR-OS Home Page xpaths

# Country xpaths
${xpath_selectCountry}      xpath://img[@src='/static/ic_arrow_down.36756079.svg']
${xpath_select_INDIA}       xpath://span[.='India (en-IN)']

# Theams Xpaths
${xpath_clickOnLightDark}       xpath://img[@src='/static/ic_theme.f154d3ae.svg']
${xpath_click_OnLight}      xpath://label[.='Light']
${xpath_click_OnDark}      xpath://span[.='Dark']
${xpath_clickOnCloseMark}   xpath://img[@src='/static/ic_close.6987e30c.svg']

# Notification Xpaths
${xpath_clickNotification}      xpath://img[@src='/static/ic_bell.1b1c1f80.svg']


# Top Timesheet Xpaths
${xapth_clickTop_timesheet}     xpath://img[@src='/static/ic_task.ebc7ad8a.svg']


# Click on question morks xpath
${xpath_question_help}      xpath://img[@src='/static/ic_help.9945fdef.svg']
${xpath_clickOnMyTickets}       xpath://span[text()='My Tickets']

# cleck on search Box

${xpath_ClickSearch}        xpath://img[@src='/static/ic_search.10fe83ab.svg']
${xapth_Search_Element}     xpath://input[@placeholder='Search..']



# Left menu of HR-OS Home Page xpaths

# DashBoard Page xpaths
${xpath_DashBoard}      xpath://img[@src='/assets/menuIcons/dashboard.svg']
${xpath_ClickHoliday}       xpath://div[text()='Holiday Calendar']

# Dairectory Xpath
${xpath_ClickDairectory}        xpath://img[@src='/assets/menuIcons/directory.svg']
${xpath_DairectorySearchEmp}     xpath://input[@type='search']

# Onbording Xpath
${xapth_OnBoarding}         xpath://img[@src='/assets/menuIcons/onboarding.svg']

# OfBoarding xpath
${xapth_OffBoarding}        xpath://img[@src='/assets/menuIcons/offboarding.svg']

# Time Sheet xapths

${xapth_TimeSheet}      xpath://img[@src='/assets/menuIcons/timesheet.svg']


# Reports Xpath

${xpath_Reports}        xpath://img[@src='/assets/menuIcons/reports.svg']



#Create a Time Sheet for a week on Dialy basis xapths

#Create a Time Sheet Dialy basis
${xpath_AddTak}             xpath://div[text()='Add Task']
${id_xpath_ClickDate}       id:basic_dates

${xpath_DailyBase_StartDate}    xpath://input[@placeholder='Start date']
${xpath_DailyBase_EndDate}    xpath://input[@placeholder='End date']

${xpath_StartingTime}       id:basic_tasks_0_startTime
${xpath_EndingTime}     id:basic_tasks_0_endTime

${id_xpath_Project}     id:basic_tasks_0_projectId
${xpath_EnterProject}       xpath://div[text()='Rampup_Software Services - Terralogic']

${id_xpath_Task}        id:basic_tasks_0_taskName

${id_xpath_Description}      id:basic_tasks_0_notes
${xpath_TimeSheetSubmit}        xpath://div[text()='Submit']
#${xpath_TimeSheetEdit}      xpath://img[@src='/static/ic_edit.8cd75d9f.svg']


# Create a Time Sheet for a week on Weekly Basis
${xpath_WeeklyBase}     xpath://span[text()='Weekly']
${xpath_CurrentDate}     xpath://td[@class='ant-picker-cell ant-picker-cell-in-view ant-picker-cell-today']
${xpath_OnSixthDay}       xpath:(//td[@class="ant-picker-cell ant-picker-cell-in-view"])[6]



#Update newly created time sheet. (Do for 4.1 & 4.2)
${xpath_ForwordDate}        xpath://img[@src='/static/ic_arrow_right_gray.aaf9b4aa.svg']
${xpath_editTimeSheetDetails}       xpath:(//img[@src='/static/ic_edit.8cd75d9f.svg'])[1]        #//img[@src='/static/ic_edit.8cd75d9f.svg']
${id_xpath_updateDescription}       id:basic_notes
${xpath_UpdateTimeSheet}        xpath://div[text()='Update']



#Delete  newly created time sheet. (Do for 4.1 & 4.2)
${xpath_DeleteTimeSheet}        xpath://img[@src='/static/ic_delete.10ddaf87.svg']
${xpath_DeleteTask}     xpath://div[text()='Yes']

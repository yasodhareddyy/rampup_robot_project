# Project - Robot Framework Automation
# Project Structure


myproject_root_folder: This is the root directory for Robot Framework project.

    resources: This folder holds all resource files used in automation suite.
        page_objects: Each .robot file here defines the XPaths and elements for a specific page.
            For example, register_po.robot and login_po.robot contains the registration and login page elements.
        Variables: Contains variable files. Variables are used for storing data that can be reused across test cases.
            common_variables.robot: Holds commonly used variables like URLs, application paths, or timeouts.
            login_variables.robot: Stores variables related to the login module.
            registration_variables.robot: Stores variables related to the registration module.

        Keywords: Stores keyword files, which contain reusable keywords that perform actions or verifications in your tests.
            common_keywords.robot: Contains general-purpose keywords that can be used across modules.

    TestCycles: This folder contains test cases grouped into modules or cycles.
        Module1folder: Contains test scenarios specific to Module 1.
            testscenario: Individual test case files like testcase1.robot, testcase2.robot, and testcase3.robot.
        Module 2 folder: Contains test scenarios specific to Module 2.
            testscenario: Individual test case files like testcase1.robot, testcase2.robot, and testcase3.robot.

# To Run Test Cases
1. Python and Robot Framework installed on your system.
2. Open a terminal and navigate to the root directory of the project (MyProject Root Folder).
3. Run the desired test suite using the following command

# robot <file_name>     

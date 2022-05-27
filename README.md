# APEX_UNIT_TEST_EXCEPTION_COVERAGE
I've demonstrated 3 ways to cover the exception part of the main Class from the test class.

# AccountControllerDataTest.cls
Don't pass the required field intentionally ;) .

# AccountControllerForcedTest.cls
Throw a forced exception from the Main Class when the UNIT TEST class is running. I know it's a hack solution but this is what it is :( . 

# AccountControllerUserTest.cls
Call your method using an User who doesn't have access to your Object/Field whatsoever, pretty elegant right? :3 

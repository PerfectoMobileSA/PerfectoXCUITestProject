# XCUITest + Perfecto execution steps:

Kindly follow the procedure mentioned [here](https://developers.perfectomobile.com/display/PD/XCUITest#expand-APreparetheapplicationandapplicationtestrunnerfiles) in order to generate the .app files for this sample project. Place the generated .app files into this project's base directory.<br>

To activate the perfecto gradle plugin, open a command-line/terminal window in the project's folder and run the following gradle tasks:</br></br>
`cd PerfectoXCUITest`</br>
`gradle perfecto-xctest -PconfigFileLocation=configFile.json -PcloudURL=${url} -PsecurityToken=${securityToken}`</br>

### Note: 
1. Replace ${url} with your perfecto cloud url. E.g.: demo.perfectomobile.com </br>
2. Replace ${securityToken} with your perfecto security token.</br>
3. Update appPath and testAppPath in configFile.json.</br>
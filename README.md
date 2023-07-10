# XCUITest + Perfecto execution steps:

Real Device: </br>
- Kindly follow the procedure mentioned [here](https://help.perfecto.io/perfecto-help/content/perfecto/automation-testing/xcuitest.htm#expand-APreparetheapplicationandapplicationtestrunnerfiles) in order to generate the .app files for this sample project. Place the generated .app files into this project's base directory.<br>
- Update appPath and testAppPath in configFile.json. </br>
- To activate the perfecto gradle plugin, open a command-line/terminal window in the project's folder and run the following gradle tasks:</br>
`cd PerfectoXCUITest`</br>
`gradle perfecto-xctest -PconfigFileLocation=configFile.json -PcloudURL=${url} -PsecurityToken=${securityToken}`</br>

Virtual Device: </br>
- Refer our [help](https://help.perfecto.io/perfecto-help/content/perfecto/automation-testing/xcuitest-virtual-devices.htm) portal and prepare the application files. PerfectoXCUITest's build.gradle has a sample task named buildXcodeProject which prepares the .xctestproducts automatically.</br>
- To prepare xc product file & activate the perfecto gradle plugin, open a command-line/terminal window in the project's folder and run the following gradle tasks:</br>
`cd PerfectoXCUITest`</br>
`gradle buildXcodeProject perfecto-xctest-vd -PconfigFileLocation=configFileSim.json -PcloudURL=${url} -PsecurityToken=${securityToken}`</br>

### Note: 
1. Replace ${url} with your perfecto cloud url. E.g.: demo.perfectomobile.com where 'demo' to be replaced with your cloud name. </br>
2. Replace ${securityToken} with your perfecto security token.</br>

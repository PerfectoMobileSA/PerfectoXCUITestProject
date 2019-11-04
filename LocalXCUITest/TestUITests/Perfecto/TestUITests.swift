//
//  TestUITests.swift
//  TestUITests
//
//  Created by Genesis Thomas on 15/09/17.
//  Copyright © 2017 Genesis Thomas. All rights reserved.
//

import XCTest

class TestUITests: XCTestCase {
    // app code
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
         XCUIApplication().swipeUp()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSample(){
    }
 
    func testPositiveCase() {
        InitPage.waitForPerfecto()
        InitPage.enterText(String: "123")
        InitPage.clickSubmit()
    }
    
}

//
//  TestUITests.swift
//  TestUITests
//
//  Created by Genesis Thomas on 15/09/17.
//  Copyright © 2017 Genesis Thomas. All rights reserved.
//

import XCTest

class SampleTests: XCTestCase {
    
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
    
    func testFailure() {
        // Use recording to get started writing UI tests.
        
        let app = XCUIApplication()
        app.staticTexts["Welcome to Perfecto Mobile!"].tap()
        
        let textField = app.otherElements.containing(.staticText, identifier:"Welcome to Perfecto Mobile!").children(matching: .textField).element
        textField.tap()
        textField.typeText("123")
        app.buttons["Submit"].tap()
        app.staticTexts["Welcome to Perfecto Mobile!"].tap()
        
       
        
        XCTAssertFalse(false, "failing wantedly")
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}

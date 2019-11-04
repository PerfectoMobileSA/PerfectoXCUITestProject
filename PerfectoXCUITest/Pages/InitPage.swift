//
//  InitPage.swift
//  TestUITests
//
//  Created by Genesis Thomas on 17/10/2018.
//  Copyright © 2018 Genesis Thomas. All rights reserved.
//

import Foundation
import XCTest

class  InitPage {
    static let labelPerfecto = XCUIApplication().staticTexts["lbl1"]
    static let txtBox = XCUIApplication().textFields["txtbox1"]
    static let submitButton = XCUIApplication().buttons["submit1"]
    
    static func waitForPerfecto() {
        let testcase = XCTestCase()
        testcase.waitForElementToAppear(element: labelPerfecto)
      }
     
    static func enterText(String: String)  {
        txtBox.tap()
        txtBox.typeText(String)
    }
    
    static func clickSubmit(){
        submitButton.tap()
    }
}

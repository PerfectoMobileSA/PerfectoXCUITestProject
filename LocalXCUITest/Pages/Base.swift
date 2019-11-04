//
//  Base.swift
//  TestUITests
//
//  Created by Genesis Thomas on 17/10/2018.
//  Copyright © 2018 Genesis Thomas. All rights reserved.
//

import Foundation
import XCTest

class Base{
}
extension XCTestCase {
    func waitForElementToAppear(element: XCUIElement) {
        let existsPredicate = NSPredicate(format: "exists == true")
        expectation(for: existsPredicate,
                    evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: 15, handler: nil)
    }
}


//
//  GreeterUITests.swift
//  GreeterUITests
//
//  Created by Shashikant Jagtap on 11/06/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

class GreeterUITests: XCTestCase {
    
    func testUserShouldSeeGreetingsMessage() {
        
        XCTContext.runActivity(named: "Given application is launched") { _ in
            XCUIApplication().launch()
        }
        XCTContext.runActivity(named: "When user tap on enter button") { _ in
            XCUIApplication().buttons["enter"].tap()
        }
        XCTContext.runActivity(named: "Then I should see greeting message") { _ in
            XCTAssertTrue(XCUIApplication().staticTexts["Welcome"].exists)
        }
        
    }
    
}

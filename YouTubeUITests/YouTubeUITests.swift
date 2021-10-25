//
//  YouTubeUITests.swift
//  YouTubeUITests
//
//  Created by Arash Zahoory on 10/25/21.
//  Copyright © 2021 Haik Aslanyan. All rights reserved.
//

import XCTest

class YouTubeUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // The comments seen INSIDE the function are not necessary, but included to assist in the effort of reviewing this assignment
        func testSearchScenario() {
            // UI tests must launch the application that they test.\
            let testString = "test"
            let testoutString = "testout"

            let app = XCUIApplication()
            app.launch()

            // Tap on Search button
            app.navigationBars["YouTube"].buttons["navSearch"].tap()

            // Type “test” in the search bar.
            let textField = app.textFields["Search on Youtube"]
            textField.typeText(testString)

            // Select the option “testout” from the results list.
            let tablesQuery = app.tables
            tablesQuery.staticTexts[testoutString].tap()

            // Check if text box is displaying “testout”.
            XCTAssertEqual(textField.value as! String, testoutString)

            // Dismiss the keyboard.
            app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()

            //assertion for return to home page
            // there doesn't seem to be a requirement for an assertion here
        }
}

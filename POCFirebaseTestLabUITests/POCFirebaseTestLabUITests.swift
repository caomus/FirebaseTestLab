//  POCFirebaseTestLabUITests.swift
//  Module POCFirebaseTestLabUITests
//
//  Created on 20/12/24.

import XCTest

final class POCFirebaseTestLabUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUpWithError() throws {
       continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        app.terminate()
        app = nil
    }
    
    func test_VAL_1928_AlertMessage() {
                
        let labelMessage = app.staticTexts["txt_description_message"]
        XCTAssertTrue(labelMessage.exists, "Text message is not found.")
        
        let labelName = app.staticTexts["txt_description_sender"]
        XCTAssertTrue(labelName.exists, "Text name is not found.")
        
        let messageTextField = app.textFields["Input message"]
        XCTAssertTrue(messageTextField.exists, "Input messageEnter you name field is not found.")
        messageTextField.tap()
        messageTextField.typeText("Hello!")
        
        let senderTextField = app.textFields["Enter you name"]
        XCTAssertTrue(senderTextField.exists, "Enter you name field is not found.")
        senderTextField.tap()
        senderTextField.typeText("Mr.UITest")
        
        let buttonPreview = app.buttons["button_send_message"]
        XCTAssertTrue(buttonPreview.exists, "Button send message is not found.")
        buttonPreview.tap()
        
        let buttonCancel = app.alerts.scrollViews.otherElements.buttons["Cancel"]
        XCTAssertTrue(buttonCancel.exists, "Button cancel is not found.")
        buttonCancel.tap()
    }
}

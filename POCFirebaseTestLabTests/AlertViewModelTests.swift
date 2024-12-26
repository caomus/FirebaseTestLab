//  AlertViewModelTests.swift
//  Module TrueIDFirebaseTestLabTests
//
//  Created on 18/12/24.

import XCTest
@testable import POCFirebaseTestLab

class AlertViewModelTests: XCTestCase {
    var viewModel: AlertViewModel!
    
    // Arrange
    override func setUpWithError() throws {
        viewModel = AlertViewModel()
    }
    
    // Teardown
    override func tearDownWithError() throws {
        viewModel = nil
    }

    

    func testPerformMessageAlert() throws {
        // Givent
        let message: String = "xctest function perfor message alert"
        let sender: String = "Mr.xctest"
        
        // When
        viewModel.performMessage(sender: sender, message: message)
        
        // Then
        XCTAssertEqual(viewModel.resultShow?.name, sender)
        XCTAssertEqual(viewModel.resultShow?.message, message)
    }

}

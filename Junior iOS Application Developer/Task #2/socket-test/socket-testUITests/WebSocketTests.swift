//
//  WebSocketTests.swift
//  socket-testUITests
//
//  Created by DevHive.
//

import XCTest

final class socket_testUITests: XCTestCase {

    var server: WebSocketServerMock!
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        server = WebSocketServerMock()
    }

    override func tearDownWithError() throws {
        server.stopServer()
    }
    
    func testSocketConnection() throws {
        var isSocketConnectionSucceed = false
        let expectation = XCTestExpectation(description: "Waiting for client connection")
        try server.startServer(connected: {
            isSocketConnectionSucceed = true
            expectation.fulfill()
        })
        
        app.launchEnvironment = ["ws_address": "localhost", "ws_port": "8080"]
       
        app.launch()
        wait(for: [expectation], timeout: 5.0)
        XCTAssertTrue(isSocketConnectionSucceed, "Connection should be successfully set up")
    }
    
    func testMessageReceive() throws {
        let expectation = XCTestExpectation(description: "Waiting for message")
        var messageReceived = false
        
        try server.startServer(text: { message in
            if message == "pong" {
                messageReceived = true
                expectation.fulfill()
            }
        }, connected: {
            self.server.sendMessage("ping")
        })
        app.launchEnvironment = ["ws_address": "localhost", "ws_port": "8080"]
       
        app.launch()
        wait(for: [expectation], timeout: 5.0)
        XCTAssertTrue(messageReceived, "Message received")
    }
}

//
//  WebSocketServerMock.swift
//  socket-testUITests
//
//  Created by DevHive.
//

import Swifter

class WebSocketServerMock {
    private let server: HttpServer
    private var connectedSessions: WebSocketSession?

    init() {
        server = HttpServer()
    }

    func startServer(text: ((String) -> Void)? = nil,
                     connected: (() -> Void)? = nil) throws {
        server[""] = websocket(text: { [weak self] session, message in
            self?.handleConnected(session: session)
            text?(message)
        }, connected: { [weak self] session in
            self?.handleConnected(session: session)
            connected?()
        })

        try server.start()
    }

    func stopServer() {
        server.stop()
    }

    func sendMessage(_ text: String) {
        guard let session = connectedSessions else {
            print("No connected sessions")
            return
        }

        session.writeText(text)
    }

    private func handleConnected(session: WebSocketSession) {
        connectedSessions = session
        print("Session connected")
    }
}


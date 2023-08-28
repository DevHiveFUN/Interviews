
# Socket test

A test task to check understanding of working with sockets.

## Goals
Need to write a socket client that will connect to a local socket server.
To check the operation of the client socket, you need to use the tests that are in the file `WebSocketTests.swift` (target `socket-testUITests`).
When the UI test is launched, the address and port are passed to the application via `launchEnvironment`, which must be obtained on the application side and connected to the socket server.

**IMPORTANT**: The code of the tests themselves does not need to be corrected, they are written only to check the operation of the client socket.

The goal of the test task is to achieve the successful completion of two tests.
- Test for successful connection of a new client to a socket server.
- Test for "pong" messages 
Regarding the second test - the logic is as follows. When a new client connects to the socket server, the server sends a "ping" message, after which the server should receive a "pong" message.

## Main requirements
- You can use any tool to write a client socket.
- No need to spend time on the UI (if possible without it at all).
- Do not change the test code.

###### Good luck! 
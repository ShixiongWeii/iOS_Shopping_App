//
//  UserAPITest.swift
//  ModerneShoppingTests
//
// Created by Shixiong Wei on 2024-04-25.
//

import XCTest
@testable import ModerneShopping
class UserAPITest: XCTestCase {

    var mockUsers: MockAPIServices!
    var users: UserViewModel!
   
    
    override func setUp() {
        mockUsers = MockAPIServices()
        users = .init(userServices: mockUsers)
    }
    
    func testLoadingUser(){
    }
    
    override func tearDown() {

    }

}

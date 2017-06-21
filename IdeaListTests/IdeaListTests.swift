//
//  IdeaListTests.swift
//  IdeaListTests
//
//  Created by Shani on 6/8/17.
//  Copyright © 2017 Shani Rivers. All rights reserved.
//

import XCTest
@testable import IdeaList


class IdeaListTests: XCTestCase {
    
    // MARK: Idea Class Test
    func testIdeaInitialization_Succeeds () {
        let allValidIdea = Idea.init(name: "Test idea name", notes: "Test notes", image: nil)
        XCTAssertNotNil(allValidIdea, "The idea with all valid data was successful")
    }
    
    func testIdeaInitialization_Fails () {
        let emptyNameIdea = Idea.init(name: "", notes: "Test notes", image: nil)
        XCTAssertNil(emptyNameIdea)
        
        let emptyNotesIdea = Idea.init(name: "Test idea name", notes: "", image: nil)
        XCTAssertNil(emptyNotesIdea)
        
        let spaceForNameIdea = Idea.init(name: " ", notes: "Test notes", image: nil)
        XCTAssertNil(spaceForNameIdea)
       
        let spaceForNotesIdea = Idea.init(name: "Test idea name", notes: " ", image: nil)
        XCTAssertNil(spaceForNotesIdea)
        
        let newLineForNotesIdea = Idea.init(name: "Test idea name", notes: "\n", image: nil)
        XCTAssertNil(newLineForNotesIdea)
    }
}

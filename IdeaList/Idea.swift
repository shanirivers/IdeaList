//
//  Idea.swift
//  IdeaList
//
//  Created by Shani on 6/20/17.
//  Copyright © 2017 Shani Rivers. All rights reserved.
//

import UIKit

class Idea {
    
    // MARK: Properties
    var name: String
    var notes: String
    var image: UIImage?
    
    // MARK: Initialization
    init?(name: String, notes: String, image: UIImage?) {
        
        // this should make initialization fail if either name or notes are empty
        guard name.trimmingCharacters(in: .whitespaces).characters.count > 0 else {
            return nil
        }
        
        guard notes.trimmingCharacters(in: .whitespacesAndNewlines).characters.count > 0 else {
            return nil
        }
        
        self.name = name
        self.notes = notes
        self.image = image
    }
}

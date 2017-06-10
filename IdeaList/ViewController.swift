//
//  ViewController.swift
//  IdeaList
//
//  Created by Shani on 6/8/17.
//  Copyright © 2017 Shani Rivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var ideaNameLabel: UILabel!
    @IBOutlet weak var ideaTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

     // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: Any) {
        ideaNameLabel.text = "This is a test idea"
        notesTextView.text = "This is some test notes here...."
        
    }
    

}


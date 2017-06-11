//
//  ViewController.swift
//  IdeaList
//
//  Created by Shani on 6/8/17.
//  Copyright © 2017 Shani Rivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    // MARK: Properties
    
    @IBOutlet weak var ideaNameLabel: UILabel!
    @IBOutlet weak var ideaTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    
    var notes: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle textfields's user input through delegate callback
        ideaTextField.delegate = self
        notesTextView.delegate = self
    }

     // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: Any) {
        ideaNameLabel.text = "This is a test idea"
        notesTextView.text = "This is some test notes here...."
        
    }
    
    
    // MARK: UITextFieldDelegate Methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool  {
        ideaTextField.resignFirstResponder() // hide the keyboard
        return true
    }
    

    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        ideaNameLabel.text = ideaTextField.text
        ideaTextField.text = ""
    }
    
    // MARK: UITextViewDelegate Methods
    func textViewDidEndEditing(_ textView: UITextView) {
        notes = notesTextView.text
        notesTextView.text = notes
    }
    
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
    {
        if text == "\n" {
            notesTextView.resignFirstResponder() // dismiss the keyboard
            return false
        }
        
        return true
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


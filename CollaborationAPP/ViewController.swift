//
//  ViewController.swift
//  CollaborationAPP
//mark
//  Created by Mark Stul 2019 on 5/7/19.
//  Copyright © 2019 SHS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

  @IBOutlet weak var answerTextViewOutlet: UITextView!
    @IBAction func AnswerButtonAct(_ sender: UIButton) {// if the user clicks to get an answer
        if(questiontextFieldOutlet.text != nil){// if the user has asked a question checks to see if the text field has input
            
            
        }
        else{
            
            let alert = UIAlertController(title: "error", message: "please ask a question", preferredStyle: .alert)//
            let cancel = UIAlertAction(title: "cancel", style: .default, handler: nil)
           alert.addAction(cancel)
            self.present(alert, animated: true, completion: nil)
           
    }
    }
    @IBAction func questiontextFieldAction(_ sender: UITextField) {
        
    }
    @IBOutlet weak var ball8Outlet: UIImageView!
    @IBOutlet weak var questiontextFieldOutlet: UITextField!
  
    
    @IBOutlet weak var AnswerButtonOut: UIButton!
}


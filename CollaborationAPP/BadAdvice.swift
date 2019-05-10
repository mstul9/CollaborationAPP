//
//  BadAdvice.swift
//  CollaborationAPP
//
//  Created by Samuel Shokodko 2019 on 5/10/19.
//  Copyright © 2019 SHS. All rights reserved.
//

import UIKit

class BadAdvice: UIViewController {
    var advice:[String] = ["Be yourself.","If You Don’t Have Enough Time in the Morning to Brush Your Teeth, Just Add Toothpaste to Your Food."," Drinking Can Cause Memory Loss, or Even Worse, Memory Loss."," If You Don't Know Where Your Children Are in the House, Turn off the Internet and Watch Them Magically Appear."," If You Swim with a Friend, Your Chances of Getting Eaten by a Shark Will Drop by 50%."," It is enough that the people know there was an election. The people who cast the votes decide nothing. The people who count the votes decide everything."," Marry Someone Who Has a Different Favorite Cereal than You So They Won't Eat All of Yours","For $1, you can buy a candy bar from a vending machine. For $2, you can buy a brick, and get all the candy in the vending machine. "," Don't Give Up On Your Dreams, Keep Sleeping."," No Cop, No Stop."," No flashlight on your phone? Take a photo of the sun, and use it in the dark."," A glove filled with warm water creates the illusion that you’re not alone."

]
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func Advice(_ sender: UIButton) {
        if(questionText.text != nil && questionText.text != "" && questionText.text != " " ){// if the user has asked a question checks to see if the text field has input that is not a space
            
            
            let rng = arc4random_uniform(UInt32(0) + UInt32(12))
            print(rng)
          adviceText.text = advice[Int(rng)]
        }
        else{
            
            let alert = UIAlertController(title: "error", message: "please ask a question", preferredStyle: .alert)//
            let cancel = UIAlertAction(title: "cancel", style: .default, handler: nil)
            alert.addAction(cancel)
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    @IBAction func questionAct(_ sender: UITextField) {
    }
    
    @IBOutlet weak var adviceText: UITextView!
    
    @IBOutlet weak var questionText: UITextField!
}

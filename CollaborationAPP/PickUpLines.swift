//
//  PickUpLines.swift
//  CollaborationAPP
//
//  Created by Samuel Shokodko 2019 on 5/10/19.
//  Copyright © 2019 SHS. All rights reserved.
//

import UIKit

class PickUpLines: UIViewController {
    var advice:[String] = [" Do you have a pencil? Because I want to erase your past and re-write your future.","Say, didn't we go to different schools together?"," Date me if I'm wrong, but isn't your name Gertrude?","Will you be my WiFi?  Because we have a strong connection.","Are you a triangle? 'Cause you're acute one!"," Are you a magician? Because whenever I look at you, everyone else disappears!"," Did you invent the airplane? Cause you seem all-Wright to me. "," Let me tie your shoes, cause I don't want you falling for anyone else."," Do you have a sunburn, or are you always this hot?"," Hey I’m Swift, can I crash at your place tonight?"," Are you you on GitHub? Cause I’m looking to commit."," Are you a double? The thought of you always floats inside my head."," Baby you must be Google Glasses, because you augment my reality"," Can you please go into your info plist and drop your guard for me?"," You’re so sweet my ‘Za Hunter App zoomed in on you."," Baby, you’re so hot you made my simulator crash."," Are you a Boolean? Cause our love is always true."," Wanna get out of here? I got a modal segue we can ride."," Is you’re name google? Cause you’re everything I was searching for."," My love for you cannot be measured in an int. It’s bounds are infinite."," You’re my compiler. I can’t go on without you."," Do you play soccer cuz you're definitely a keeper."," Are you a sharpie cuz you're ultra fine."," On a scale of 1-10 you're a 9 cuz I'm the one you need."," I would cut off my ear with a rusty spoon to see you with your socks off."]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rng = arc4random_uniform(UInt32(0) + UInt32(12))
        print(rng)
      PickUpLineOut.text = advice[Int(rng)]
    }
    
    
   
    @IBOutlet weak var PickUpLineOut: UITextView!
    
    
    @IBAction func GiveMeAnother(_ sender: UIButton) {
        let rng = arc4random_uniform(UInt32(0) + UInt32(12))
        print(rng)
        PickUpLineOut.text = advice[Int(rng)]
    }
    
}

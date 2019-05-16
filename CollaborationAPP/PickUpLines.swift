//
//  PickUpLines.swift
//  CollaborationAPP
//
//  Created by Samuel Shokodko 2019 on 5/10/19.
//  Copyright © 2019 SHS. All rights reserved.
//

import UIKit

class PickUpLines: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var numofLines=0
    var Gen:[String] = []
    let types = ["cheesy","science","dirty","nerdy(CS)","sporty"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return types.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return types[row]
    }
    var cheesy = ["I'm not a photographer, but I can picture me and you together.","Are you a triangle? 'Cause you're acute one!","I seem to have lost my phone number. Can I have yours?","Is your nickname Chapstick? Because you’re da balm!","Have you been to the doctor lately? Cause I think you're lacking some Vitamin Me.","Do you like Nintendo? Because Wii would look good together. ","Was your dad a boxer? Cause you're a knockout!","Are you a banana? Because I find you a-peeling","Are you Jewish? Cause you ISRAELI HOT.","Did you read Dr. Seuss as a kid? Because green eggs and... damn!","Are you Hurricane Katrina? Cause you’re blowing me away.","Is your name Ariel? Cause we Mermaid for each other!","Are you from Tennessee? Because you're the only ten I see!","If you were a booger I'd pick you first.","My love for you is like diarrhea, I just can't hold it in.","Hey baby you're so fine you make me stutter, wha-wha-what's your name?","No wonder the sky is grey today, all the blue is in your eyes.","People call me (name), but you can call me tonight.","Is your name Dunkin? Because I Donut want to spend another day without you.","Do you like Star Wars? Because Yoda only one for me!","If nothing lasts forever, will you be my nothing?","Are you on Nickelodeon? Cause you're a-Dora-ble!","I don't know if you're beautiful, I haven't gotten past your eyes yet.","You don't need keys to drive me crazy.","You must be Jamaican, because Jamaican me crazy.","If you were a chicken, you'd be impeccable.","Your eyes are as blue as window cleaner.","Are you a magician? Because whenever I look at you, everyone else disappears!", "On a scale of 1-10 you're a 9 cuz I'm the one you need."," Do you have a pencil? Because I want to erase your past and re-write your future."," Do you have a sunburn, or are you always this hot?","Say, didn't we go to different schools together?"," Date me if I'm wrong, but isn't your name Gertrude?","Let me tie your shoes, cause I don't want you falling for anyone else."]
   
    
    // cheesy 34
    var science = ["If I were an enzyme, I'd be DNA helicase so I could unzip your genes. ","Are you made of Copper and Tellurium? Because you are Cu-Te ","Do you have 11 protons? 'Cause you're Sodium fine! ","Do you like Science? Because I've got my ion you! "," You're hotter than a bunsen burner "," How about me and you go back to my place and form a covalent bond? "," Give me your number and I'll be the powerhouse of your cell. ","Whenever I am near you, I undergo anaerobic respiration because you take my breath away. "," I wish I were Adenine because then I could get paired with U. "," If you were an element, you'd be Francium, because you're the most attractive. "," Are you a DNA protein? cuz girl, your thighs-a-mean.","Wanna dance? I can really put your inertia in motion.","Can I have your significant digits? ","Did you swallow a magnet? Because you're attractive.","You're more special than relativity. ","My last partner wasn't very stable. She spontaneously decayed last week and left me for a neutrino. "," Heisenberg was wrong. I'm certain about what you're doing tonight. ","Wanna couple our equations tonight? ","Don't you hate it how the coyote always remains suspended in midair until he looks down? It's just SO misleading. "," Does your skin feel burnt? Because I think you must have just fallen down from heaven, and re-entry would have caused some problems for you. ","I might be a physics major, but I'm no Bohr in bed. "]
    //21 for sceince
    var dirty = ["I'm no weather man, but you can expect more than a few inches tonight. ","Do you have a mirror in your pocket? (Why?) Because I can see myself in your pants.","Let's go back to my room and do some math: Add a bed, subtract our clothes, divide your legs, and multiply. ","Do you like yoga? Cause Yoganna love this dick. ","You are the reason that god invented boners. ","They say sex is a killer... Do you want to die happy?","Hey baby there's a party in my pants and you are invited! ","I bet my tongue can beat up your tongue.","let only latex stand between our love. ","My name is pogo. Would you like to jump on my stick? ","I like your hair, your eyes, your smile... I like every bone in your body... Especially mine! ","I'm with the TSA and I need to perform a full body cavity search, for security reasons. ","What has 132 teeth and holds back the Incredible Hulk? My zipper. ","My name is Skittles... wanna taste my rainbow? ","Are those space pants? Cuz your ass is out of this world!","I just checked my schedule and I can have you pregnant by Christmas. "," I would cut off my ear with a rusty spoon to see you with your socks off."]
    //17 for dirty
    //18 for nerdy
    var nerdy  = [
        "Will you be my WiFi?  Because we have a strong connection."," Did you invent the airplane? Cause you seem all-Wright to me. "," Hey I’m Swift, can I crash at your place tonight?"," Are you you on GitHub? Cause I’m looking to commit."," Are you a double? The thought of you always floats inside my head."," Baby you must be Google Glasses, because you augment my reality"," Can you please go into your info plist and drop your guard for me?"," Baby, you’re so hot you made my simulator crash."," Are you a Boolean? Cause our love is always true."," Is you’re name google? Cause you’re everything I was searching for."," My love for you cannot be measured in an int. It’s bounds are infinite."," You’re my compiler. I can’t go on without you."," You had me at Hello World."," Isn't your e-mail address beautifulgirl@mydreams.com? "," WebMD says your love is contagious. "," Are you the F5 key? Cause you're so refreshing "," Are you a computer keyboard? Because you're my type. "," If you were a web browser, you'd be called Fire-fox. "]
    var Sporty:[String] = [" Consider this your two-minute warning... before I kiss you. "," Do you play football? Because you've got a tight end. ","Are you an eligible receiver... of my phone number? ","How about we kick off a new relationship tonight? "," I bet you play soccer, because you're a keeper. "," Are you David Beckham? Because I'd bend for you."," You're allowed to use your hands in this game."," Ever kiss a guy with no teeth? "," If you were a puck, I'd never shoot. Because I would always miss you."," Are you a volleyball? Because I dig you." ,"Are you wearing SPF 150? Cause that was one serious block!","Hey girl, You can serve me underhand if you like."," Hey, you wanna pass with me? ","I don’t think you have to warm up, because you’re already looking hot.","I’d get on my knee pads for you quickly. ","Hey baby, If I serve my heart to you, would you get it? "," Is it a Hail Mary to ask you out?"," I'm the biggest lady-killer in Buffalo since O.J. Simpson."," You've intercepted my heart."," Are you in the outfield? Because you're an angel."]
    //20 sporty
    override func viewDidLoad() {
        super.viewDidLoad()
        Gen = cheesy// sets the cheesy lines as the defualt
        numofLines = 34// defualt array # of lines
        
    }
    @IBOutlet weak var PickUpLineOut: UITextView!
    @IBAction func GiveMeAnother(_ sender: UIButton) {
        let rng = arc4random_uniform(UInt32(0) + UInt32(numofLines-1))
        PickUpLineOut.text = Gen[Int(rng)]
        thePickthing.isHidden = true
    }
    override func becomeFirstResponder() -> Bool {
        return true
    }
    @IBOutlet weak var PickView: UIPickerView!// outlet for picerview
    func pickerView(
        _ pickerView: UIPickerView,
        didSelectRow row: Int,
        inComponent component: Int)
    {
        let row2=(PickView.selectedRow(inComponent: 0))
        if( row2 == 0){// cheesy
            numofLines = 34
            Gen = cheesy
        }
        else if(row2 == 1){  // science 21
            numofLines = 21
            Gen = science
        }
        else if(row2 == 2){// dirty
            numofLines = 17
            Gen = dirty
        }
        else if(row2 == 3){// nerdy
           numofLines = 18
            Gen = nerdy
        }
        else if(row2 == 4){// sporty
            numofLines = 20
            Gen = Sporty
        }
}
    @IBOutlet weak var thePickthing: UIPickerView!
    @IBAction func PickaNewCat(_ sender: UIButton) {
        thePickthing.isHidden = false// hides the pickerview
    }
}

//
//  ViewController.swift
//  What should I eat
//
//  Created by Susanne Küchler on 24.02.23.
//

import UIKit

class ViewController: UIViewController {

    let auswahl = ["Pasta Factory","Berlin Pho", "Sushi","Cocolo","Kreuzberger Weltlaterne","Kochen","Salat","Basmah","Angry Chicken","Han - Korean Food","Caphe HOA 2","ZOLA","Il Casolare","Goldadelux","CHIKOGI","LIU - Nudelhaus"]
    
    var zufallsZahl = 0
    var letzteZahl = 0
    
    @IBOutlet weak var Infolabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        letzteZahl = Int.random(in: 0..<auswahl.count)
        zufallsZahl = Int.random(in: 0..<auswahl.count)
       
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            actionButtonHandler(UIButton())
        }
    }

    @IBAction func actionButtonHandler(_ sender: UIButton) {
        // damit kein identischer Vorschlag 2x hintereinander kommt
        while letzteZahl == zufallsZahl {
            zufallsZahl = Int.random(in: 0..<auswahl.count)
        }
        letzteZahl = zufallsZahl
        Infolabel.text = "\(auswahl[zufallsZahl])"
        
    }
    

}


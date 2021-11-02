//
//  Details.swift
//  Project2
//
//  Created by Roaa aljohani on 25/03/1443 AH.
//

import UIKit

class Details: UIViewController {
   // var account : Reservation!
    var NewRewservations = [Reservation]()
    var NameD: String = ""
    var EmailD: String = ""
    var PhonenumberD: String = ""
    var FromD: String = ""
    var ToD: String = ""
    var date = Date()
   
    @IBOutlet weak var FromLabel: UILabel!
    @IBOutlet weak var ToLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var PhoneLabel: UILabel!
 
    @IBOutlet weak var DateAndTime: UIDatePicker!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = NameD
        FromLabel.text = FromD
        ToLabel.text = ToD
        EmailLabel.text = EmailD
        PhoneLabel.text = PhonenumberD
        DateAndTime.date = date
    }

        
    }
    



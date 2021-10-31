//
//  ViewController.swift
//  Project2
//
//  Created by Roaa aljohani on 24/03/1443 AH.
//

import UIKit
struct Reservation {
    var Name: String
    var Email: String
    var PhoneNumber: String
    var From: String
    var To: String
    var Date: String
    var Time: String
}
class ViewController: UIViewController {

    var NewReservation = [Reservation]()
    @IBOutlet weak var NameText: UITextField!
    @IBOutlet weak var EmailText: UITextField!
    @IBOutlet weak var PhoneText: UITextField!
    @IBOutlet weak var FromText: UITextField!
    @IBOutlet weak var ToText: UITextField!
    @IBOutlet weak var DateText: UITextField!
    @IBOutlet weak var TimeText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func NewReservation(_ sender: Any)
    {
        NewReservation.append(Reservation(
            Name: NameText.text!, Email: EmailText.text!, PhoneNumber: PhoneText.text!, From: FromText.text!, To: ToText.text!, Date: DateText.text!, Time: TimeText.text!
        ))
        print(NewReservation)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let table1 = segue.destination as! TableView
        table1.NewReserve = NewReservation
        
        
    }
    
    
}


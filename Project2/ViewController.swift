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
    var DateAndTime1 = Date()
    var index = 0
}

class ViewController: UIViewController {
    var filteredData : String = ""
    var index = 0
    var NewReservation = [Reservation]()
    @IBOutlet weak var NameText: UITextField!
    @IBOutlet weak var EmailText: UITextField!
    @IBOutlet weak var PhoneText: UITextField!
    @IBOutlet weak var FromText: UITextField!
    @IBOutlet weak var ToText: UITextField!
    @IBOutlet weak var viewR: UIView!
    @IBOutlet weak var DateAndTime: UIDatePicker!
    

    override func viewDidLoad() {
        super.viewDidLoad()
     print(NewReservation)
       viewR.layer.cornerRadius = 30
        
        let NameU = UserDefaults.standard.string(forKey: "name")
        NameText.text = NameU
        let Email = UserDefaults.standard.string(forKey: "email")
        EmailText.text = Email
        let PhoneNumber = UserDefaults.standard.string(forKey: "phone")
        PhoneText.text = PhoneNumber
        let From = UserDefaults.standard.string(forKey: "from")
        FromText.text = From
        let To = UserDefaults.standard.string(forKey: "to")
        ToText.text = To

        
    
    }

    @IBAction func NewReservation(_ sender: Any)
    {
//        print(DateAndTime.date)
        
        NewReservation.append(Reservation(
            Name: NameText.text!, Email: EmailText.text!, PhoneNumber: PhoneText.text!, From:
                FromText.text!, To: ToText.text!,
            
            DateAndTime1: DateAndTime.date
            
        ))
       UserDefaults.standard.set(NameText.text ,forKey: "name")
         UserDefaults.standard.set(EmailText.text, forKey: "email")
        UserDefaults.standard.set(PhoneText.text,forKey: "phone")
    UserDefaults.standard.set(FromText.text, forKey: "from")
    UserDefaults.standard.set(ToText.text,forKey: "to")
        
        print(NewReservation)
      
    }
 

        
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let table1 = segue.destination as? TableView {
            table1.NewReserve = NewReservation}
        
        else if segue.identifier == "ShowResult"{
           let table = segue.destination as! TableView
            table.name = NewReservation[index].Name
            print(NewReservation)
                table.tableView.reloadData()
               
        }
        
   

    }
    
    
}


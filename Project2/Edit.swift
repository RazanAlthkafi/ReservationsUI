//
//  Edit.swift
//  Project2
//
//  Created by Roaa aljohani on 26/03/1443 AH.
//

import UIKit
protocol PassDataBack {
    
    func updateRow(updateName: String, updateEmail: String, updatePhone: String, updateFrom: String,updateTo: String, updateDate: Date)
    
}
class Edit: UIViewController {
var NewReserveE = [Reservation]()
    var dataPass:Reservation!
    var delegate: PassDataBack!
    var NameE: String = ""
    var EmailE: String = ""
    var PhonenumberE: String = ""
    var FromE: String = ""
    var ToE: String = ""
    var DateE = Date()
   
    @IBOutlet weak var NameLabel: UITextField!
    @IBOutlet weak var EmaiLabel: UITextField!
    @IBOutlet weak var PhoneLabel: UITextField!
    @IBOutlet weak var FromLabel: UITextField!
    @IBOutlet weak var ToLabel: UITextField!
    
    @IBOutlet weak var DatePik: UIDatePicker!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        EmaiLabel.text = dataPass.Email
        PhoneLabel.text = dataPass.PhoneNumber
        FromLabel.text = dataPass.From
        ToLabel.text = dataPass.To
        NameLabel.text = dataPass.Name
        DatePik.date = dataPass.DateAndTime1
        
      
    }
    
    @IBAction func updateD(_ sender: Any) {
        let newDate = NameLabel.text!
        let newDate1 = EmaiLabel.text!
        let newDate2 = PhoneLabel.text!
        let newDate3 = FromLabel.text!
        let newDate4 = ToLabel.text!
        let newDate5 = DatePik.date
        delegate.updateRow(updateName: newDate, updateEmail: newDate1, updatePhone: newDate2, updateFrom: newDate3, updateTo: newDate4, updateDate: newDate5)
        dismiss(animated: true, completion: nil)
        print(NameE,EmailE,PhonenumberE)
        navigationController?.popViewController(animated: true)
    }

    



}

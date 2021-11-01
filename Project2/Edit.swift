//
//  Edit.swift
//  Project2
//
//  Created by Roaa aljohani on 26/03/1443 AH.
//

import UIKit

class Edit: UIViewController {
//    var NewReserveE = [Reservation]()
    var selectedAccount : Reservation!
//    var NameE: String = ""
//    var EmailE: String = ""
//    var PhonenumberE: String = ""
//    var FromE: String = ""
//    var ToE: String = ""
    @IBOutlet weak var NameLabel: UITextField!
    @IBOutlet weak var EmaiLabel: UITextField!
    @IBOutlet weak var PhoneLabel: UITextField!
    @IBOutlet weak var FromLabel: UITextField!
    @IBOutlet weak var ToLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = selectedAccount.Name
        EmaiLabel.text = selectedAccount.Email
        PhoneLabel.text = selectedAccount.PhoneNumber
        FromLabel.text = selectedAccount.From
        ToLabel.text = selectedAccount.To
      
    }
    
    @IBAction func updateD(_ sender: Any) {
//                NewReserveE.append(Reservation(
//                    Name: NameLabel.text!, Email: EmaiLabel.text!, PhoneNumber: PhoneLabel.text!, From: FromLabel.text!, To: ToLabel.text!
//                ))
                
        selectedAccount.Name = NameLabel.text!

//            }

        performSegue(withIdentifier: "goBackToDetails", sender: self)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goBackToDetails"{
        let edit = segue.destination as! Details
        edit.account = selectedAccount
    }
}
    

}


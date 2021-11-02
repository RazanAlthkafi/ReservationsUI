//
//  Edit.swift
//  Project2
//
//  Created by Roaa aljohani on 26/03/1443 AH.
//

import UIKit
protocol PassDataBack {
    
    func updateRow(updateName: String, updateEmail: String, updatePhone: String, updateFrom: String,updateTo: String)
    
}
class Edit: UIViewController {
var NewReserveE = [Reservation]()
    var dataPass: String?
    var delegate: PassDataBack!
    var NameE: String = ""
    var EmailE: String = ""
    var PhonenumberE: String = ""
    var FromE: String = ""
    var ToE: String = ""
   
    @IBOutlet weak var NameLabel: UITextField!
    @IBOutlet weak var EmaiLabel: UITextField!
    @IBOutlet weak var PhoneLabel: UITextField!
    @IBOutlet weak var FromLabel: UITextField!
    @IBOutlet weak var ToLabel: UITextField!
    
    
//    override func viewWillDisappear(_ animated: Bool) {
//        NameLabel.text = NameE
//        EmaiLabel.text = EmailE
//        PhoneLabel.text = PhonenumberE
//        FromLabel.text = FromE
//        ToLabel.text = ToE    }
    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = dataPass!
        EmaiLabel.text = EmailE
        PhoneLabel.text = PhonenumberE
        FromLabel.text = FromE
        ToLabel.text = ToE
      
    }
    
    @IBAction func updateD(_ sender: Any) {
//               NewReserveE.append(Reservation(
//                Name: NameLabel.text!, Email: EmaiLabel.text!, PhoneNumber: PhoneLabel.text!, From: FromLabel.text!, To: ToLabel.text!
//              ))
      //  selectedAccount.Name = NameLabel.text!
        
        let newDate = NameLabel.text!
        
        delegate.updateRow(updateName: newDate, updateEmail: "", updatePhone: "", updateFrom: "", updateTo: "")
        dismiss(animated: true, completion: nil)
        print(NameE,EmailE,PhonenumberE)
        navigationController?.popViewController(animated: true)
//        for i in 0..<NewReserveE.count  {
//                   NewReserveE[i].Name = NameE
//                      NewReserveE[i].Email = EmailE
        
//
//        }
      //  performSegue(withIdentifier: "GoBackToTable", sender: self)
    
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "GoBackToTable"{
        let table = segue.destination as! TableView
        table.NewReserve = NewReserveE
        
        
       // table.NewReserve = NewReserveE
        
    }}
    // navigationController?.popViewController(animated: true)
}
    




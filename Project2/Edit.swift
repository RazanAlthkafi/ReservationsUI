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
  var dataPass:Reservation?
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
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        NameLabel.text = dataPass
        EmaiLabel.text = dataPass?.Email
        PhoneLabel.text = dataPass?.PhoneNumber
        FromLabel.text = dataPass?.From
        ToLabel.text = dataPass?.To
        NameLabel.text = dataPass?.Name
        
      
    }
    
    @IBAction func updateD(_ sender: Any) {
        let newDate = NameLabel.text!
        let newDate1 = EmaiLabel.text!
        let newDate2 = PhoneLabel.text!
        let newDate3 = FromLabel.text!
        let newDate4 = ToLabel.text!
        delegate.updateRow(updateName: newDate, updateEmail: newDate1, updatePhone: newDate2, updateFrom: newDate3, updateTo: newDate4)
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
//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if segue.identifier == "GoBackToTable"{
//        let table = segue.destination as! TableView
//        table.NewReserve = NewReserveE
//        
//        
//       // table.NewReserve = NewReserveE
//        
//    }}
    // navigationController?.popViewController(animated: true)
}
    




//
//  Details.swift
//  Project2
//
//  Created by Roaa aljohani on 25/03/1443 AH.
//

import UIKit

class Details: UIViewController {
    var account : Reservation!
    
    var NameD: String = ""
    var EmailD: String = ""
    var PhonenumberD: String = ""
    var FromD: String = ""
    var ToD: String = ""
   
    
    @IBOutlet weak var FromLabel: UILabel!
    @IBOutlet weak var ToLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var PhoneLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        NameLabel.text = account.Name
        FromLabel.text = account.From
        ToLabel.text = account.To
        EmailLabel.text = account.Email
        PhoneLabel.text = account.PhoneNumber
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = account.Name
        FromLabel.text = account.From
        ToLabel.text = account.To
        EmailLabel.text = account.Email
        PhoneLabel.text = account.PhoneNumber
       
    }
    
    @IBAction func Confirm(_ sender: Any) {
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailsEdit"{
          let edit = segue.destination as! Edit
            edit.selectedAccount = account
           
        }
        
    }
    

}

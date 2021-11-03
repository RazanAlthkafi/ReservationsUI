

import UIKit

class Login: UIViewController {
    var NewReserve = [Reservation]()
    var Name: String = ""
    var Email: String = ""
    var PhoneNumber: String = ""
    var From: String = ""
    var To: String = ""
    var DateAndTime1 = Date()
    @IBOutlet weak var LoginText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    @IBOutlet weak var LabelText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        LabelText.isHidden = true
       
        
    }
    
    @IBAction func LoginAction(_ sender: Any) {
        
        if LoginText.text == "admin" && PasswordText.text == "12345"{
            LabelText.isHidden = true
            performSegue(withIdentifier: "GoToSearch", sender: self)
            
        }
        else{
            LabelText.isHidden = false
            LabelText.text = "you can not access"
        }
        }
        
    
    




    }

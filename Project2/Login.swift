

import UIKit

class Login: UIViewController {
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
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "GoToSearch"{
//       let x = segue.destination as! SearchPage
//
//
//
//        }





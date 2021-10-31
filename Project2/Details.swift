//
//  Details.swift
//  Project2
//
//  Created by Roaa aljohani on 25/03/1443 AH.
//

import UIKit

class Details: UIViewController {
    var NameD: String = ""
    var EmailD: String = ""
    var PhonenumberD: String = ""
    var FromD: String = ""
    var ToD: String = ""
    var DateD: String = ""
    var TimeD: String = ""
    
    @IBOutlet weak var FromLabel: UILabel!
    @IBOutlet weak var ToLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var PhoneLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    
    @IBOutlet weak var TimeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = NameD
        FromLabel.text = FromD
        ToLabel.text = ToD
        EmailLabel.text = EmailD
        PhoneLabel.text = PhonenumberD
        DateLabel.text = DateD
        TimeLabel.text = TimeD
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  SearchPage.swift
//  Project2
//
//  Created by Roaa aljohani on 28/03/1443 AH.
//

import UIKit
import CoreData

class SearchPage: UIViewController, UISearchBarDelegate {
    var filteredData = [Reservation]()
    var Search =  [Reservation] ()
    var index : Int = 0
    var nameS: String = ""
    var emailS: String = ""
    var phoneS: String = ""
    var fromS: String = ""
    var toS: String = ""
    var datetimeS = Date()
  
    @IBOutlet weak var EmptySearch: UILabel!
    
    let SearchController = UISearchController()

    @IBOutlet weak var SearchT: UISearchBar!
    override func viewDidLoad() {
       
        EmptySearch.isHidden = true
        
    }
    
    @IBAction func PressSearch(_ sender: Any) {
        if SearchT.text == "" {
            EmptySearch.isHidden = false
            EmptySearch.text = "enter text first "
        
            filteredData = Search
            
        }
        else{
            EmptySearch.isHidden = true
            self.filteredData = self.Search.filter{ $0.Name.contains(SearchT.text!) }
            
            print(filteredData)
            performSegue(withIdentifier: "ShowResult", sender: self)
                
                 // TableView.reloadInputViews(self)
              }
    }
    

}



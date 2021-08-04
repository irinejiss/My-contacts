//
//  ThirdViewController.swift
//  Tableview
//
//  Created by Irine Babu on 03/08/21.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var desc: UILabel!
    
    var userName:String? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setName()
    }
    
    func setName() {
        guard let name = userName else { return }
        mainTitle.text = name
    }
}

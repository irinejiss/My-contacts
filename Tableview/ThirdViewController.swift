//
//  ThirdViewController.swift
//  Tableview
//
//  Created by Irine Babu on 03/08/21.
//

import UIKit
import TextFieldEffects
import SkyFloatingLabelTextField

class ThirdViewController: UIViewController,UITextFieldDelegate,UITextViewDelegate{
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var setAddress: UITextView!
  
    var userName:String?
    var textView = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        setAddress.delegate = self
        setAddress.text = "Address"
        setAddress.textColor = UIColor.lightGray
        setName()
    
    }
    func setName() {
        guard let name = userName else { return }
        mainTitle.text = name
       
    }
}

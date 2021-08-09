//
//  ThirdViewController.swift
//  Tableview
//
//  Created by Irine Babu on 03/08/21.
//

import UIKit
import TextFieldEffects
import SkyFloatingLabelTextField
class ThirdViewController: UIViewController {
    @IBOutlet weak var mainTitle: UILabel!

    var userName:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        setName()
        giveName()
        giveNum()
    }
    func setName() {
        guard let name = userName else { return }
        mainTitle.text = name
       
    }
    func giveName(){
        let textField = AkiraTextField(frame:CGRect(x: 30, y: 200, width: 300, height: 40))
        _ = UIColor(red: 197/255, green: 205/255, blue: 205/255, alpha: 1.0)
        _ = UIColor(red: 52/255, green: 42/255, blue: 61/255, alpha: 1.0)
        textField.placeholder = "Name"
        textField.placeholderColor = .darkGray
//        textField.foregroundColor = .lightGrayColor()

        self.view.addSubview(textField)
    }
    func giveNum(){
        let numField = SkyFloatingLabelTextField(frame: CGRect(x: 40, y: 300, width: 200, height: 45))
        numField.placeholder = "Ph.No"
        self.view.addSubview(numField)
}
}

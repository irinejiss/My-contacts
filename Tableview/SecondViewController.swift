//
//  SecondViewController.swift
//  Tableview
//
//  Created by Irine Babu on 27/07/21.
//

import UIKit
var names = ["Babu","Jiss","Adrin","Anna","Adham","Thea","Nishi","Leema","Noel","Amrutha"]
var phNo = ["67643","8346","6498","5827","6732","89690","8698","097675","9767867","98689"]
var myIndex = 0

class SecondViewController: UIViewController{
    @IBOutlet var contactList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactList.delegate = self
        contactList.dataSource = self
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "contactDetailSegue") {
            let thirdVc = segue.destination as! ThirdViewController
            let indexPath = sender as! IndexPath
            thirdVc.userName = names[indexPath.row]
        }
    }
}

extension SecondViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let thirdVc = ThirdViewController()
        thirdVc.userName = names[indexPath.row]
        
        performSegue(withIdentifier: "contactDetailSegue", sender: indexPath)
    }
}

extension SecondViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let contactCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! customCell
        
        contactCell.nameLabel.text = names[indexPath.row]
        contactCell.numberLabel.text = phNo[indexPath.row]
        return contactCell
        
    }
    
}



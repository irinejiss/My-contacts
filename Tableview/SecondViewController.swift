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
}

extension SecondViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
<<<<<<< HEAD
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let thirdVc = ThirdViewController()
        thirdVc.userName = names[indexPath.row]
        
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    

=======
    
}
>>>>>>> 88476c75f83ee308c5da6897dd8c0649a19e723d
extension SecondViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! customCell
        
        cell.name.text = names[indexPath.row]
        cell.no.text = phNo[indexPath.row]
        return cell
        
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//
//        myIndex = indexPath.row
//        performSegue(withIdentifier: "segue", sender: self)
//    }
    
}



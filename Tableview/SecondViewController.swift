//
//  SecondViewController.swift
//  Tableview
//
//  Created by Irine Babu on 27/07/21.
//

import UIKit

    class SecondViewController: UIViewController{
    @IBOutlet var contactList: UITableView!
        var names = ["Babu","Jiss","Adrin","Anna","Adham","Thea","Nishi","Leema","Noel","Amrutha"]
        var phNo = ["67643","8346","6498","5827","6732","89690","8698","097675","9767867","98689"]
    override func viewDidLoad() {
        super.viewDidLoad()
        contactList.delegate = self
        contactList.dataSource = self
        // Do any additional setup after loading the view.
    }
        override func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
        }
}

extension SecondViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
}
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
}

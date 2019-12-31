//
//  ViewController.swift
//  UIListView
//
//  Created by Tosh  on 12/31/19.
//  Copyright © 2019 Tosh . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var img = ["1","2","3","4","5"]
    var name = ["Splash", "Shop", "Deliver", "Pay", "Main page"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return img.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 196
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        cell.myImage.image = UIImage(named: img[indexPath.row] + ".png")
        cell.myLabel.text = name[indexPath.row]
        
        return cell
    }
    
}


//
//  ViewController.swift
//  UIListView
//
//  Created by Tosh  on 12/31/19.
//  Copyright © 2019 Tosh . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let countries = ["Kenya", "Uganda", "Tanzania", "Rwanda", "Burundi", "Ethiopia", "Djibouti", "Eritrea"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "countriesCell", for: indexPath)
        
        cell.textLabel?.text = countries[indexPath.row]
        
        return cell
    }
    
    
}


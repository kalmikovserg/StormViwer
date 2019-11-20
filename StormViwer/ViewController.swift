//
//  ViewController.swift
//  StormViwer
//
//  Created by SIARHEI KALMYKOU on 11/18/19.
//  Copyright © 2019 SIARHEI KALMYKOU. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var pathToPictures: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pathToPictures.append(item)
            }
        }
        
}
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pathToPictures.count
   }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PictureID", for: indexPath)
        cell.textLabel?.text = pathToPictures[indexPath.row]
        return cell
    }
}

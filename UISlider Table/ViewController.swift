//
//  ViewController.swift
//  UISlider Table
//
//  Created by D7703_16 on 2018. 5. 3..
//  Copyright © 2018년 201412402. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        let tableValue = String(Int(mySlider.value * 100) + indexPath.row)
        cell.textLabel?.text = tableValue
        return cell
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        print("slider value = \(Int(mySlider.value * 100))")
        
        //tableView 값을 reload
        myTableView.reloadData()
    }
    
}


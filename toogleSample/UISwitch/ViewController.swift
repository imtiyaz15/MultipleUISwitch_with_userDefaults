//
//  ViewController.swift
//  toogleSample
//
//  Created by Brahmastra on 18/12/19.
//  Copyright © 2019 Brahmastra. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    let array = ["1","2"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MYTableViewCell
        cell.textLabel?.text = array[indexPath.row]
        
        //switch
       let swicthView = UISwitch(frame: .zero)
        swicthView.setOn(false, animated: true)
        swicthView.tag = indexPath.row
        cell.mySwitch.tag = indexPath.row
        swicthView.addTarget(self, action: #selector(self.switchChanged(_:)), for: .valueChanged)
        
        cell.accessoryView = swicthView
        if swicthView.tag == 0{
        swicthView.setOn(UserDefaults.standard.bool(forKey: "store"), animated: true)
        }
        else{
            swicthView.setOn(UserDefaults.standard.bool(forKey: "store2"), animated: true)
        }
        
        if cell.mySwitch.tag == 0
        {
            cell.mySwitch.setOn(UserDefaults.standard.bool(forKey: "isFormat"), animated: true)
        }
        else{
            cell.mySwitch.setOn(UserDefaults.standard.bool(forKey: "isFormat2"), animated: true)
        }
        return cell
    }
    
    @objc func switchChanged(_ sender: UISwitch!) {
        if sender.tag == 0{
        print("Table row switch Changed \(sender.tag)")
        print("The switch is \(sender.isOn ? "ON" : "OFF")")
        if sender.isOn == true{
             UserDefaults.standard.set(true, forKey: "store")
             print(UserDefaults.standard.bool(forKey: "store"))
         }
        else if sender.isOn == false
         {
           
             UserDefaults.standard.set(false, forKey: "store")
             print(UserDefaults.standard.bool(forKey: "store"))
         }
        }
        else
        {
            print("Table row switch Changed \(sender.tag)")
            print("The switch is \(sender.isOn ? "ON" : "OFF")")
            if sender.isOn == true{
                 UserDefaults.standard.set(true, forKey: "store2")
                 print(UserDefaults.standard.bool(forKey: "store2"))
             }
            else if sender.isOn == false
             {
               
                 UserDefaults.standard.set(false, forKey: "store2")
                 print(UserDefaults.standard.bool(forKey: "store2"))
             }
        }
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



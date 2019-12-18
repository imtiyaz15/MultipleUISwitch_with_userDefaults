//
//  MYTableViewCell.swift
//  toogleSample
//
//  Created by Brahmastra on 18/12/19.
//  Copyright © 2019 Brahmastra. All rights reserved.
//

import UIKit

class MYTableViewCell: UITableViewCell {

    var checkFormat:Bool = false
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        if (UserDefaults.standard.object(forKey: "isFormat") != nil )
//        {
//            mySwitch.isOn = UserDefaults.standard.bool(forKey: "isFormat")
//        }
        
    }

    @IBAction func changeFormatSwitch(_ sender: UISwitch)
       {
        
        print("Table row switch Changed \(sender.tag)")
               print("The switch is \(sender.isOn ? "ON" : "OFF")")
        if sender.tag == 0
        {
           if sender.isOn == true
           {
               
               UserDefaults.standard.set(true, forKey: "isFormat")
              print(UserDefaults.standard.bool(forKey: "isFormat"))
              
           }
           else if sender.isOn == false
           {
               
               UserDefaults.standard.set(false, forKey: "isFormat")
               print(UserDefaults.standard.bool(forKey: "isFormat"))
           }
           
       }
        else{
            if sender.isOn == true
            {
                
                UserDefaults.standard.set(true, forKey: "isFormat2")
               print(UserDefaults.standard.bool(forKey: "isFormat2"))
               
            }
            else if sender.isOn == false
            {
                UserDefaults.standard.set(false, forKey: "isFormat2")
                print(UserDefaults.standard.bool(forKey: "isFormat2"))
            }
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
  
}

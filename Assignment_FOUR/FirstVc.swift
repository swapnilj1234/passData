//
//  FirstVc.swift
//  Assignment_FOUR
//
//  Created by swapnil jadhav on 02/03/20.
//  Copyright © 2020 t. All rights reserved.
//

import UIKit

class FirstVc: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    
    //var save : Dictionary = ["name":"","address":"","img":""]
    
    var save : Dictionary<String,Any> = ["name":"","address":"","img":""]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

       
    }

    @IBAction func saveData(_ sender: UIButton) {
        
        
        var sc = SecondVc()
        
        
        
        
        save["name"] = username.text
        save["address"] = address.text
        
        
        
        if segment.selectedSegmentIndex == 0
        {
           save["img"] = "v.jpg"
            
        
            //save["img"] = img1
            
        }
        else if segment.selectedSegmentIndex  == 1
        {
           save["img"] = "w.jpg"
            //save["img"] = img2
        }
        else if segment.selectedSegmentIndex == 2
        {
            save["img"]="warn.jpg"
           
            //save["img"] = img3
        }
        
        
        
        /*
        if segment.selectedSegmentIndex == 0
        {
            save["img"] = img1
        }
        else if segment.selectedSegmentIndex  == 1
        {
           save["img"] = img2
        }
        else if segment.selectedSegmentIndex == 2
        {
            save["img"]=img3
        }
 */
        
   // print(save["name"]!,save["address"]!,save["img"]!)
        
        
        
       
        
        
    }
    
    
    @IBAction func Pass(_ sender: UIButton) {
        
        var sc = SecondVc()
        
        self.navigationController?.pushViewController(sc, animated: true)
        
        sc.str = username.text
        sc.str2 = address.text
        
        
        
        
        if segment.selectedSegmentIndex == 0
        {
        sc.img = img1
            
            
        }
        else if segment.selectedSegmentIndex  == 1
        {
            
            
            
            sc.img = img2
        }
        else if segment.selectedSegmentIndex == 2
        {
            
            
            sc.img = img3
        }
    
       // sc.dict["name"] = save["name"]
        //sc.dict["address"] = save["address"]
        //sc.dict["img"] = save["img"]
    
        sc.dict = save
    
    }
    
}

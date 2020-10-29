//
//  SecondVc.swift
//  Assignment_FOUR
//
//  Created by swapnil jadhav on 02/03/20.
//  Copyright © 2020 t. All rights reserved.
//

import UIKit

class SecondVc: UIViewController {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var address: UILabel!
    
    @IBOutlet weak var imgs: UIImageView!
    
    
    var str : String?
    var str2 : String?
    var img : UIImageView?
    
    var dict : Dictionary<String,Any> = ["name":"","address":"", "img": ""]
    
    var e : UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*
        name.text = str
        address.text = str2
        imgs.image = img?.image
        */
        
        
        
        
        
   // print(dict["img"])
        
        name.text = dict["name"] as! String
        address.text = dict["address"] as! String
        //imgs.image = img?.image
        
        imgs?.image = UIImage(named: dict["img"] as! String)
        
        
        
                
        
    }


     

}

//
//  ViewController.swift
//  MVC&ALAMOFIRE
//
//  Created by Syed.Reshma Ruksana on 20/01/20.
//  Copyright © 2020 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit
import  Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        dataFromServer()
        // Do any additional setup after loading the view.
    }

    
    func dataFromServer()
    {
        
        
        DataManager.shared.gettingData(url: "https://jsonplaceholder.typicode.com/users") { (response,Error) in
            if(Error != nil)
            {
                print(Error?.localizedDescription)
            }else{

            print(response)
        }
        }
        
        
    }

}


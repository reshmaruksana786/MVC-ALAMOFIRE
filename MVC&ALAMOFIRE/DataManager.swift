//
//  DataManager.swift
//  MVC&ALAMOFIRE
//
//  Created by Syed.Reshma Ruksana on 20/01/20.
//  Copyright © 2020 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit
import Alamofire

class DataManager: NSObject {
    
    
    static var shared = DataManager()
    
    
    func gettingData(url:String,completionHandler:@escaping([code]?,Error?)->Void)
    {
        Alamofire.request(url).responseData { (response) in

            if(response.result.error != nil)
            {
                completionHandler(nil,response.result.error)
            }else{
                do {
                    var data = try JSONDecoder().decode([code].self, from: response.result.value!)
                    
                   completionHandler(data,nil)
                } catch  {
                    
                    
                    print("unable to decode")
                }
                
            }
            
        }
        
    }

}

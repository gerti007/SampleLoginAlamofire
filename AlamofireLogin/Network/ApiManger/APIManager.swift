//
//  APIManager.swift
//  IosLogin
//
//  Created by Gerti Prifti on 1/3/19.
//  Copyright © 2019 ExampleTableview. All rights reserved.


import Foundation
import Alamofire

struct APIManager {

    static func loginRequest(username:String, passwors:String,completionHandler: @escaping (_ success: Bool) -> ()) {
        
        let params: [String: Any] = ["email": username,"password": passwors]
        
        Alamofire.request(EndPoint.loginUrl, method: .post, parameters: params).validate().responseString {
            (response) in
        
            if(response.response?.statusCode==200){
                
                 completionHandler(true)
                
            }else{
                
                 completionHandler(false)
            }
            
        }
        
    }
    
}

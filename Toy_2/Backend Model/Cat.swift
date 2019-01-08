//
//  Cat.swift
//  Toy_2
//
//  Created by Enrique Rueda on 1/7/19.
//  Copyright © 2019 appdev. All rights reserved.
//

import UIKit

class Cat: NSObject {
    struct CatCellInfo {
        let name: String!
        let image: UIImage!
        let age: Int!
        let type: String!
    }
    
    static var count: Int = 0
    static var catArr = [CatCellInfo]()
    
    class func addCat(name: String!, age: Int!, image: UIImage!, type: String!) -> Void {
        catArr.append(CatCellInfo(name: name, image: image, age: age, type: type))
        count += 1
    }
    
    class func loadCats(completion: @escaping (Array<Dictionary<String, String>>) -> Void) -> Void {
        let url = URL(string: "http://www.chenziwe.com/cats")
        let session = URLSession(configuration: .default)
        var request = URLRequest(url:url!)
        request.httpMethod = "GET"
        let task = session.dataTask(with: request) { (data, response, error) in
            if(error != nil){
                print("Failed to load Cats!")
                return
            }
            print("Got our cats!")
            let result = try? JSONSerialization.jsonObject(with: data!, options: []) as! Array<Dictionary<String, String>>
            
            completion(result!)
        }
        task.resume()
        
    }
}

//
//  Model.swift
//  MVVMProject
//
//  Created by MACBOOK PRO RETINA on 25/12/2018.
//  Copyright © 2018 MACBOOK PRO RETINA. All rights reserved.
//

import Foundation

class Model {
    var phoneContactName: String?
    var phoneContactNumber: String?
    
    // inicializador para cuando se reciben los parametros solo como String.
    init(phoneContactNumber: String, phoneContactName: String) {
        self.phoneContactNumber = phoneContactNumber
        self.phoneContactName = phoneContactName
    }
    
    // inicializador para cuando se reciben los parámetros como Diccionario.
    init(dictionary: NSDictionary) {
        self.phoneContactNumber = dictionary["phoneContactNumber"] as? String
        self.phoneContactName = dictionary["phoneContactName"] as? String
    }
    
    public class func modelFromDictionaryArray(array: NSArray) -> [Model] {
        var items = [Model]()
        for data in array {
            items.append(Model(dictionary: data as! NSDictionary))
        }
        return items
    }
}

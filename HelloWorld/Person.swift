//
//  Person.swift
//  Octophone
//
//  Created by Jolene Bernagene/Amara Gordon on 9/20/18.
//  Copyright © 2018 Jolene/Amara. All rights reserved.
//

import UIKit

class Person{
    
    //MARK:Properties
    var name : String
    var photo:UIImage?
    
    init?(name:String, photo:UIImage?) {
        
        guard !name.isEmpty else{
            return nil
        }
        
        self.name = name
        self.photo = photo
        
    }

}

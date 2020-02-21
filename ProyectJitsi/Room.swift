//
//  Room.swift
//  ProyectJitsi
//
//  Created by DEV-IOS on 18/02/2020.
//  Copyright © 2020 DEV-IOS. All rights reserved.
//

import Foundation

class Room {
     var  titleRoom:String? = nil
     var id:Int? = nil
    
    init(IDRoom idRoom:Int,TitleRoom titleRoom:String) {
        self.id = idRoom
        self.titleRoom = titleRoom
    }
}

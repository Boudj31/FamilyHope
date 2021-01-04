//
//  ListWhatsapp.swift
//  Défis & activités
//
//  Created by Mikail Yavuz on 11/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import SwiftUI

struct LesMessages : Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

var NomsMsg: [LesMessages] = [
    LesMessages(name: "Mokhtar", image: "michal"),
    LesMessages(name: "Julio", image : "julio"),
    LesMessages(name: "Amina", image: "amina"),
    LesMessages(name: "Matthew", image: "matthew"),
    LesMessages(name: "Angela", image: "angela"),
    

]

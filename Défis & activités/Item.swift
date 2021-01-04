//
//  Item.swift
//  Défis & activités
//
//  Created by Mikail Yavuz on 06/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import Foundation

struct Items: Identifiable {
    var id = UUID()
    var image: String
//    var description: String
}

var arrayImage: [Items] = [
//    , [String]

    Items(image: "imageaction"),
//Text("WWII")
    Items(image: "imageanimation"),
    Items(image: "imagehorreur"),
    Items(image: "imagefantastique"),
    Items(image: "imagebiopic")
]

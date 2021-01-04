//
//  ChatModal.swift
//  Défis & activités
//
//  Created by Zohra Achour on 12/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import Foundation
import SwiftUI

class UserSettings: ObservableObject {
    
    @Published var showChatBot: Bool = true
    
}

struct ChatModal_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

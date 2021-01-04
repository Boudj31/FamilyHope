//
//  ContentView.swift
//  Défis & activités
//
//  Created by Mikail Yavuz on 04/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var chatModal: UserSettings
    
    var body: some View {
        
//        NavigationView {
            
            TabView {
                PageDefis()
                    .tabItem {
                        Image(systemName: "bolt")
                        Text("Défis")
                }
                DiscConseiller()
                    .tabItem {
                        Image(systemName: "eyeglasses")
                        Text("Conseiller")
                }
                MohaView()
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Amis")
                }
                PrfilView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profil")
                }

            }
    
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

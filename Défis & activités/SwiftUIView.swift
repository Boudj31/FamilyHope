//
//  SwiftUIView.swift
//  Défis & activités
//
//  Created by Mikail Yavuz on 04/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import SwiftUI

struct PageDefis: View {
    
    @EnvironmentObject var chatModal: UserSettings
    
    @State private var showDetails = false
    @State private var showChatModale: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    VStack {
                        
                        Image("iconcuisine")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 130)
                            .clipShape(Circle())
                            .offset(x: -100, y: 20)
                        Text("Cuisine 🍽")
                            .offset(x: -100, y: 20)
                        
                    }
                    
                    VStack {
                        
                        Image("iconcom")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 90)
                            .clipShape(Circle())
                            .offset(x: 90, y: -50)
                        Text("Echange 👥")
                            .offset(x: 90, y: -50)
                        
                    }
                    
                    VStack {
                        
                        Image("iconmarche")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 90)
                            .clipShape(Circle())
                            .offset(x: -100, y: 0)
                        Text("Sortie 👣")
                            .offset(x: -100, y: 0)
                        
                    }
                    
                    VStack {
                        
                        VStack {
                            NavigationLink(destination: This_is_a_modal(showDetails: $showDetails), label: {
                                ZStack {
                                    
                                    Image("iconcinema")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 200, height: 130)
                                        .clipShape(Circle())
                                        .offset(x: 100, y: -80)
                                    Text("Sortie 🎥")
                                        .offset(x: 100, y: 0)
                                        .foregroundColor(Color.black)
                                }
                            })
                                .buttonStyle(PlainButtonStyle())
                            
                            //                        Button(action: {
                            //                            self.showDetails.toggle()
                            //                        }, label: {
                            //
                            //                        })
                            //                            .sheet(isPresented: $showDetails, content: {
                            //                                This_is_a_modal(showDetails: self.$showDetails)
                            //                            })
                            
                        }
                        
                        VStack {
                            
                            Image("iconbowling")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 130)
                                .clipShape(Circle())
                                .offset(x: -60, y: -80)
                            Text("Activité 🎳")
                                .offset(x: -60, y: -80)
                            
                        }
                        
                        VStack {
                            
                            Image("icontelephone")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 90)
                                .clipShape(Circle())
                                .offset(x: 110, y: -120)
                            Text("Communication ☎️")
                                .offset(x: 110, y: -120)
                            
                        }
                        
                    }
                    
                    VStack {
                        
                        
                        
                        VStack {
                            
                            Image("iconkaraoke")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 90)
                                .clipShape(Circle())
                                .offset(x: -100, y: -120)
                            Text("Jeu 🎤")
                                .offset(x: -100, y: -120)
                            
                        }
                        
                        VStack {
                            
                            Image("iconmenage")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 130)
                                .clipShape(Circle())
                                .offset(x: 80, y: -160)
                            Text("Maison 🧤")
                                .offset(x: 80, y: -160)
                            
                        }
                        
                        VStack {
                            
                            Image("iconresto")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 90)
                                .clipShape(Circle())
                                .offset(x: -60, y: -180)
                            Text("Cuisine 🍸")
                                .offset(x: -60, y: -180)
                            
                        }
                        
                        VStack {
                            
                            Image("iconfoot")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 90)
                                .clipShape(Circle())
                                .offset(x: 120, y: -190)
                            Text("Sport ⚽️")
                                .offset(x: 120, y: -190)
                            
                        }
                        
                        VStack {
                            
                            Image("iconjeu")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 280, height: 130)
                                .clipShape(Circle())
                                .offset(x: -80, y: -220)
                            Text("Jeu 🎲")
                                .offset(x: -80, y: -220)
                            
                        }
                        .frame(width: 420)
                        
                    }
                    
                    
                    
                }
                .sheet(isPresented: $chatModal.showChatBot) {
                    Chat(dismissOnClick: self.$chatModal.showChatBot)
                }
                
            }
                
            .navigationBarTitle("Défis", displayMode: .inline)
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PageDefis()
    }
}

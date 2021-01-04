//
//  MohaView.swift
//  Défis & activités
//
//  Created by Mikail Yavuz on 11/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import SwiftUI

struct MohaView: View {
    
    @State var selected = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 22){
                
                Topbar(selected: self.$selected).padding(.top)
                
                if self.selected == 0{
                    
                    Home()
                }
                else {
                    
                    Account()
                }
            }
                
            .navigationBarTitle("Amis", displayMode: .inline)
        }
    }
}

struct MohaView_Previews: PreviewProvider {
    static var previews: some View {
        MohaView()
    }
}


struct Topbar : View {
    
    
    
    @Binding var selected : Int
    
    
    var body : some View {
        
        HStack{
            
            Button(action: {
                
                self.selected = 0
                
            }) {
                
                Image("msg").resizable().frame(width: 25, height: 25)
                    .padding(.vertical,12)
                    .padding(.horizontal,30)
                    .background(self.selected == 0 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                
            }
            .foregroundColor(self.selected == 0 ? .pink : .gray)
            Button(action: {
                
                self.selected = 1
                
            }) {
                Image("map").resizable().frame(width: 25, height: 25)
                    .padding(.vertical,12)
                    .padding(.horizontal,30)
                    .background(self.selected == 1 ? Color.white  : Color.clear)
                    .clipShape(Capsule())
            }
            .foregroundColor(self.selected == 1 ? .pink : .gray)
            
        }
        .padding(8)
        .background(Color("Color2"))
        .clipShape(Capsule())
        
    }
}


struct Home : View {
    
    struct Msg: Identifiable {
        var id = UUID()
        var name: String
        var msg: String
    }
    
    var msgArray: [Msg] = [
        Msg(name: "Matthew", msg: "nrfgkjehjtijd"),
        Msg(name: "Julio", msg: "djghuiehtrh"),
        Msg(name: "jerjgfjzr", msg: "PELPZKF")
        
    ]
    
    @State private var showMsg: Bool = false
    
    var body : some View {
        
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .leading) {
                Text("Discussions")
                    .bold()
                    .font(.largeTitle)
                    .offset(x: -80, y: 0)
            }
            
            
            
            VStack(spacing: 15){
                
                
                List(NomsMsg) { i in
                    NavigationLink(destination: MessageView()) {
                        HStack(spacing: 100) {
                            
                            
                            Image(i.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text(i.name)
                                    .bold()
                                    .offset(x: -90)
                            }.padding()
                            
                        }
                        
                    } // fin HS
                } // fin  List
                    
                    .frame(width: 414, height: 600)
                
            }.padding()
        }
        
    }
    
}

struct Account : View {
    
    var body : some View{
        
        VStack {
            
            HStack {
                Image("renoi2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 350)
            }
            
            HStack {
                Text("Ahmed")
                    .font(.largeTitle)
                    .padding(.top, 20)
                    .foregroundColor(.blue)
            }
            .offset(x: -120 , y: -20)
            
            HStack {
                Text("36 ans")
                    .font(.largeTitle)
                    .padding(.top, 10)
                    .foregroundColor(.blue)
            }
            .offset(x: -125 , y: -30)
            
            Text("Affinité: 80%.")
                .offset(x: -130 , y: 10)
            
            HStack {
                Image("left")
                    .offset(x: -155, y: -330)
                
                Button (action: {
                    NomsMsg.insert(LesMessages(name: "Ahmed", image: "renoi2"), at: 0)
                }, label: {
                    ZStack {
                        Image("right")
                    }
                })
                    .offset(x: 155, y: -330)
                
            }
            
            
        }
        .navigationBarTitle("Amis", displayMode: .inline)
        .frame(height: 622)
    }
}

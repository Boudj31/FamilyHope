//
//  MessageView.swift
//  Défis & activités
//
//  Created by Mikail Yavuz on 11/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import SwiftUI

struct MessageView: View {
    var name = ""
    @State private var name2 = ""
    var body: some View {
        
//        ScrollView(showsIndicators: false) {
            ZStack {
                
                
                
                VStack {
                    
                    
                
                    
                    VStack(alignment: .center, spacing: -160){
                        
                        
                        HStack {
                            
                            Image("psy")
                                .resizable()
                                .frame(width:40, height: 40, alignment: .leading)
                                .clipShape(Circle())
                            
                            Text ("Salut frero ça va ou quoi ?")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.red)
                                .cornerRadius(10)
                                .frame(width: 270.0, height: 240, alignment: .leading)
                                .font(.system(size:15))
                                .padding(.trailing, 130)
                            
                        }
                        HStack {
                            
                            Text ("Ça va bof hein et toi?")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .frame(width: 270.0, height:220, alignment: .trailing)
                                .font(.system(size:15))
                            
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width:40, height: 40, alignment: .trailing)
                            
                        }
                        HStack {
                            
                            Image("psy")
                                .resizable()
                                .frame(width:40, height: 40, alignment: .leading)
                                .clipShape(Circle())
                            
                            Text ("Tranquille tranquille, t'as un problème, on est là pour en parler tu connais")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.red)
                                .cornerRadius(10)
                                .frame(width: 270.0, height:250, alignment: .leading)
                                .font(.system(size:15))
                                .padding(.trailing, 130)
                            
                        }
                        HStack {
                            
                            Text ("Ouais tqt lol, et toi du coup t'en a parlé à ta soeur?")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .frame(width: 270.0, height:250, alignment: .trailing)
                                .font(.system(size:15))
                            
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width:40, height: 40, alignment: .trailing)
                            
                        }
                        HStack {
                            
                            Text ("Tu sais pour la sortie là")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .frame(width: 270.0, height:250, alignment: .trailing)
                                .font(.system(size:15))
                            
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width:40, height: 40, alignment: .trailing)
                        }
                        HStack {
                            
                            Image("psy")
                                .resizable()
                                .frame(width:40, height: 40, alignment: .leading)
                                .clipShape(Circle())
                            
                            Text ("Ouais on est partis au cinéma tt ça ça c'est archi bien passé j'suis content ça faisait longtemps")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.red)
                                .cornerRadius(10)
                                .frame(width: 270.0, height:250, alignment: .leading)
                                .font(.system(size:15))
                                .padding(.trailing, 130)
                            
                        }
                        HStack {
                            
                            Text ("Tant mieux, ça fait plaisir")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .frame(width: 270.0, height:250, alignment: .trailing)
                                .font(.system(size:15))
                            
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width:40, height: 40, alignment: .trailing)
                            
                        }
                    }
                    .frame(height: 540)
                    TextField("Ecrivez votre texte ici", text: $name2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 380)
                        .padding(.trailing, 60)
                    
                
                    
                }
                .frame(width: 400, height: 700)
                .padding(.leading, 60)
//                .padding(.trailing, 30)
                
                
            }
            
            
            
//        }
        .navigationBarTitle("Mokhtar", displayMode: .large)

    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}

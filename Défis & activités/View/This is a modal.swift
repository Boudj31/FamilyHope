//
//  This is a modal.swift
//  Défis & activités
//
//  Created by Mikail Yavuz on 05/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import SwiftUI
import SwiftUICharts

struct This_is_a_modal: View {
    
    @Binding var showDetails: Bool
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                VStack(alignment: .center) {
                    
                    Text("Défi Divertissement :")
                        .bold()
                        .italic()
                        .font(.system(size: 22))
                        .padding(.leading, 30)
                    Text("Pourquoi pas se mater un film ?")
                        .bold()
                        .italic()
                        .font(.system(size: 22))
                        .padding(.leading, 30)
                    
                }
                    
                .padding(20)
                
                VStack(alignment: .center) {
                    
                    Text("Avec maman ou ton grand-frère ? Plutot film d'action")
                        .foregroundColor(.gray)
                        .padding(.leading, 4)
                    Text("🔫 ? Ou plutot d'animation ☃️ ? Les sorties de la")
                        .foregroundColor(.gray)                    .padding(.leading, 4)
                    
                    Text("semaine vont te faire kiffer ! Profites-en avec un ou")
                        .foregroundColor(.gray)                    .padding(.leading, 4)
                    
                    Text("plusieurs membre(s) de ta famille, et à seulement 13")
                        .foregroundColor(.gray)                    .padding(.leading, 4)
                    
                    Text("minutes 😉")
                        .foregroundColor(.gray)                    .padding(.leading, 4)
                    
                    
                }
                
                VStack(alignment: .leading) {
                    Text("Les sorties de la semaine :")
                        .bold()
                        .padding(.top, 30)
                        .padding(.bottom, 5)
                        .padding(.leading, 10)
                        .font(.system(size: 25))
                }
                
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(arrayImage, id: \.id) { item in
                            
                            Image(item.image)
                                .resizable()
                                .frame(width: 150, height: 150)
                            
                            
                            
                        }
                    }
                        
                    .padding(15)
                }
                
                VStack {
                    
                    Text("Astuce : Clique sur un film pour réserver ta séance !")
                        .underline()
                        .font(.system(size: 10))
                        .padding(.leading, 5)
                }
                
                VStack {
                    
                    Text("Et voilà l'itinéraire :")
                        .bold()
                        .padding(.top, 30)
                        .padding(.leading, 10)
                        .font(.system(size: 25))
                }
                
                VStack {
                    
                    Image("imagemap")
                        .resizable()
                        .frame(width: 420, height: 230, alignment: .center)
                    
                }
                
                
                
                VStack {
                    
                    Button(action: {
                        linechartData.append(90)
                        
                        
                    }, label: {
                        Image("accepter")
                            .resizable()
                            .frame(width: 90, height: 90)
                            .cornerRadius(20)
                    })
                        .buttonStyle(PlainButtonStyle())
                        .offset(x: 170, y: 30)
                    
                    
                    
                    
                }
                .padding(.bottom, 50)
                
            }
        .navigationBarTitle("Sorties")
            
            
        }
    }
}
//}


struct This_is_a_modal_Previews: PreviewProvider {
    static var previews: some View {
        This_is_a_modal(showDetails: .constant(false))
    }
}

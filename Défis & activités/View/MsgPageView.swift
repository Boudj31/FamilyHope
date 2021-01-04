//
//  MsgPageView.swift
//  Défis & activités
//
//  Created by Mikail Yavuz on 11/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import SwiftUI

struct MsgPageView: View {
    
    var name = ""
    @State private var name2 = ""
    var body: some View {
            ZStack {
                
                VStack {
//
//                    Spacer()
                    
//                    Text(name)
                    
                    VStack(alignment: .center, spacing: -130){

                        
                        HStack {

                            Image("psy")
                                .resizable()
                                .frame(width:40, height: 40, alignment: .leading)
                                .clipShape(Circle())
                            Text ("Je vais bien je vous remercie, je suis a votre disposition pour repondre a toutes les questions visant a ameliorier votre relation de famille")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .frame(width: 270.0, height:250, alignment: .leading)
                                .font(.system(size:15))



                        }
                        
                        HStack {


                            Text ("Alors c'est difficile pour moi d'en parler mais je dirais que tout remonte a quelques années en arriere")
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
                            
                            Text ("C'est a dire ? Pourriez vous allez plus loin dans votre raisonnement ?")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .frame(width: 270.0, height:200, alignment: .leading)
                                .font(.system(size:15))
                            
                        }
                        
                        HStack {
                            
                            
                            Text ("Je pense que la communication avec mes parents a été rompu lorsqu'ils ont divorcé, plus rien n'a été pareil depuis.")
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
                            
                            Text ("Je vais bien je vous remercie, je suis a votre disposition pour repondre a toutes les questions visant a ameliorier votre relation de famille")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .frame(width: 270.0, height:250, alignment: .leading)
                                .font(.system(size:15))
                        }
                        
                        
                        }
                    .frame(height: 600)
                    
                    HStack {
                    
                    TextField("Ecrivez votre texte ici", text: $name2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(10)

                    }.frame(height: 50)
                    
                }
                
                
            }
            
            .navigationBarTitle("Mon Conseiller",displayMode: .inline)

        
    }
}







struct MsgPageView_Previews: PreviewProvider {
    static var previews: some View {
        MsgPageView()
    }
}

           



                        
//                        HStack {
//
//                            Image("psy")
//                                .resizable()
//                                .frame(width:40, height: 40, alignment: .leading)
//                                .clipShape(Circle())
//
//                            Text ("Comment allez vous aujourd'hui ?")
//                                .padding(10)
//                                .foregroundColor(.white)
//                                .background(Color.blue)
//                                .cornerRadius(10)
//                                .frame(width: 270.0, height: 200, alignment: .leading)
//                                .font(.system(size:15))
//
//                        }
                        
//                        HStack {
//
//
//                            Text ("Je vais bien aujourd'hui merci et vous ?")
//                                .padding(10)
//                                .foregroundColor(.white)
//                                .background(Color.gray)
//                                .cornerRadius(10)
//                                .frame(width: 270.0, height:200, alignment: .trailing)
//                                .font(.system(size:15))
//
//                            Image(systemName: "person.circle.fill")
//                                .resizable()
//                                .frame(width:40, height: 40, alignment: .trailing)
//
//
//                        }


//                        HStack {
//
//
//                            Text ("Alors c'est difficile pour moi d'en parler mais je dirais que tout remonte a quelques années en arriere")
//                                .padding(10)
//                                .foregroundColor(.white)
//                                .background(Color.gray)
//                                .cornerRadius(10)
//                                .frame(width: 270.0, height:250, alignment: .trailing)
//                                .font(.system(size:15))
//
//                            Image(systemName: "person.circle.fill")
//                                .resizable()
//                                .frame(width: 40, height: 40, alignment: .trailing)
//                        }
//

//
//  ContentView.swift
//  Chatbot
//
//  Created by Rachid Boudjenane on 04/03/2020.
//  Copyright © 2020 Rachid Boudjenane. All rights reserved.
//
import SwiftUI

struct Chat: View {
    
    @State private var isOn: Bool = true
    @State private var isOff: Bool = false
    @State private var resultAppears: Bool = true
    @Binding var dismissOnClick: Bool
    @State private var name = ""
    @State private var buttonCountDown = [0]
    
    
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .center) {
                
                ZStack {
                    
                    Image("rectangle2")
                        .resizable()
                        .frame(width: 350, height: 330)
                        .padding(60)
                        .cornerRadius(30)
                    
                    Text (isOn ?"Bonjour comment allez vous aujourd'hui ?": "Pensez vous que la communication soit rompue avec votre mère ?")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 320, height: 250)
                        .background(Color.white)
                        .zIndex(resultAppears ? 3 : 0)
                    
                    Text ("D'apres le systeme il semblerait que la communication avec votre mere est insuffisante selon vous, et pour nous l'objectif sera de retablir cette communication. Pour cela nous allons vous proposez une serie de defi à réaliser en famille pour vous aider .")
                        .background(Color.white)
                        .font(.headline)
                        .foregroundColor(.blue)
                        .zIndex(resultAppears ? 0 : 3)
                        .frame(width: 320, height: 250)
                    
                }
                
                HStack (alignment:.center, spacing: 110){
                    
                    Button(action: {
                        self.isOn.toggle()
                        self.buttonCountDown.append(1)
                        print(self.buttonCountDown.count)
                        if self.buttonCountDown.count >= 3 {
                            self.resultAppears.toggle()
                        }
                    }) {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width:50, height: 50, alignment: .leading)
                            .foregroundColor(.green)
                        
                    }
                    
                    
                    Button(action: {
                        self.isOff.toggle()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .frame(width:50, height: 50, alignment: .leading)
                            .foregroundColor(.red)
                    }
                }
                
                Button(action: {
                    self.dismissOnClick.toggle()
                }, label: {
                    Image("chat")
                        .resizable()
                        .frame(width: 250, height: 250)
                })
                    .buttonStyle(PlainButtonStyle())
                
            }
            
        }
        
        
        
    }
    
    
}


struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat(dismissOnClick: .constant(true))
    }
}

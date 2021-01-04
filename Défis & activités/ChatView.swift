//
//  SwiftUIView.swift
//  Chatbot
//
//  Created by Rachid Boudjenane on 11/03/2020.
//  Copyright © 2020 Rachid Boudjenane. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    
    @State var isOn: Bool = true
    @State var isOff: Bool = false
    @State private var showNextView: Bool = false
    
    
    var body: some View {
        
        ZStack {
            
            //                    Color
            
            
            
            
            
            VStack (alignment:.center, spacing: 10 ) {
                
                
                Spacer()
                
                ZStack {
                    
                    Image("rectangle2")
                        .resizable()
                        .frame(width: 350, height: 300)
                        .padding(60)
                        .cornerRadius(30)
                    
                    Text ("D'apres le systeme il semblerait que la communication avec votre mere est insuffisante selon vous, et pour nous l'objectif sera de retablir cette communication. Pour cela nous allons vous proposez une serie de defi à réaliser en famille pour vous aider .")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 320, height: 250)
                    
                }
                
                NavigationLink(destination: ContentView(), isActive: $showNextView, label: {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width:50, height: 50, alignment: .leading)
                        .foregroundColor(.green)
                })
                
                
                
                
                Image("chat")
                    .resizable()
                    .frame(width: 250, height: 250)
                
                Spacer()
                
            }
            
            
            
        }.edgesIgnoringSafeArea(.all)
            
            .navigationBarTitle("Test", displayMode: .inline)
        
        
    }
    
    
}
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

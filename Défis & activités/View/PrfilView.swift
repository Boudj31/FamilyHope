//
//  PrfilView.swift
//  Défis & activités
//
//  Created by Mikail Yavuz on 10/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import SwiftUI
import SwiftUICharts

struct PrfilView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                
                VStack(alignment: .center) {
                    
                    VStack {
                        
                        
                        Image("snow")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .shadow(color: .blue, radius: 10, x: 1, y: 1 )
                        
                        
                        
                        
                        Text("Monsieur X")
                            .font(.headline)
                            .fontWeight(.thin)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        
                        
                    }.frame(height: 260)
                    
                    
                    HStack{
                        
                        
                        Text("Objectif")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        
                    }
                    
                    
                    VStack {
                        
                        
                        
                        Text("Voila les conseils qui sont proposés:")
                            .foregroundColor(Color.black)
                        
                        
                        
                        HStack {
                            
                            
                            Text("Vous devriez augmenter les contacts avec les membres de votre famille car nous avons..")
                        }
                            
                        .font(.body)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .opacity(09)
                        
                        
                        
                        VStack {
                            
                            
                            Text("Historique")
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                            
                            //                    Spacer()
                        }
                        .frame(height: 50)
                        .padding(.top, 20)
                        
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            
                            
                            HStack {
                                
                                VStack{
                                    
                                    Image("snow")
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                    
                                    Text("Lundi")
                                        .font(.footnote)
                                        .foregroundColor(Color.blue)
                                    
                                    
                                }
                                
                                VStack{
                                    
                                    Image("Mardi")
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                    
                                    
                                    Text("Mardi")
                                        .font(.footnote)
                                        .foregroundColor(Color.blue)
                                    
                                }
                                
                                VStack{
                                    
                                    Image("Mercredi")
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                    
                                    Text("Mercredi")
                                        .font(.footnote)
                                        .foregroundColor(Color.blue)
                                }
                                
                                VStack{
                                    
                                    Image("Jeudi")
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                    
                                    
                                    Text("Jeudi")
                                        .font(.footnote)
                                        .foregroundColor(Color.blue)
                                    
                                }
                                VStack{
                                    
                                    Image("Vendredi")
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                    
                                    Text("Vendredi")
                                        .font(.footnote)
                                        .foregroundColor(Color.blue)
                                    
                                }
                                
                                VStack{
                                    
                                    Image("Samedi")
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                    
                                    
                                    Text("Samedi")
                                        .font(.footnote)
                                        .foregroundColor(Color.blue)
                                    
                                }
                                
                                VStack{
                                    
                                    Image("Dimanche")
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                    
                                    
                                    Text("Dimanche")
                                        .font(.footnote)
                                        .foregroundColor(Color.blue)
                                }
                                
                                
                                
                                
                            }
                            .frame(height: 140)
                        })
                        
                        Spacer()
                        
                        LineChartView(data: linechartData, title: "Statistiques", legend: "Défis")
                            .frame(width: 30, height: 30)
                        
                           Spacer()
                    }
                    
                 
                }
                .navigationBarTitle("Profil", displayMode: .inline)
                .frame(height: 900)
                .padding(.leading, 15)
                .padding(.trailing, 15)
                
            }
            
            
        }
    }
}

struct PrfilView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//
//  DiscConseiller.swift
//  Défis & activités
//
//  Created by Mikail Yavuz on 11/03/2020.
//  Copyright © 2020 Mikail Yavuz. All rights reserved.
//

import SwiftUI

struct DiscConseiller: View {

    @State private var name = ""

    var body: some View {
        NavigationView {
            ZStack {

                Color(.systemBlue)


                VStack {

                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(.top, 12)

                    TextField("name", text: $name)
                     .textFieldStyle(RoundedBorderTextFieldStyle())
                     .padding()

                    NavigationLink(destination: MsgPageView(name: self.name)) {

                    HStack {

                        Text("Join")
                        Image(systemName: "arrow.right.circle.fill")
                                               .resizable()
                                               .frame(width: 20, height: 20)

                    }

                }.frame(width: 100, height: 54)
                 .background(Color.blue)
                 .foregroundColor(.white)
                 .cornerRadius(27)
                 .padding(.bottom, 15)

            }
             .background(Color.white)
             .cornerRadius(20)
             .padding()


            }.edgesIgnoringSafeArea(.all)
      
.navigationBarTitle("Conseiller",displayMode: .inline)
     }
    }
}


struct DiscConseiller_Previews: PreviewProvider {
    static var previews: some View {
        DiscConseiller()
    }
}

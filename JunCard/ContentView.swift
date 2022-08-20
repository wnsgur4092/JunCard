//
//  ContentView.swift
//  JunCard
//
//  Created by JunHyuk Lim on 20/8/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.95, green: 0.77, blue: 0.06)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("jun")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Jun Lim")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(text: "+61 42417244", imageName: "phone.fill")
                InfoView(text: "junhyuk0930@outlook.com", imageName: "envelope.fill")
                InfoView(text: "https://github.com/wnsgur4092", imageName : "folder.fill")
                
                Divider()
                Image("index")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 100)
                
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


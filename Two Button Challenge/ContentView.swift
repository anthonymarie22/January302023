//
//  ContentView.swift
//  Two Button Challenge
//
//  Created by Anthony Marie on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageString = ""
    var body: some View {
        VStack {
           
            Spacer()
            
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundColor(Color(.gray))
                .padding()
            
            Spacer()
            Text(messageString)
                .foregroundColor(.red)
                .fontWeight(.black)
                .font(.largeTitle)
                .padding()
            
         
            
            HStack{
                Button("Swiftly") {
                    messageString = "You Swiftly!"
                    imageString = "swift"
                                    
                }
                Button("Apps!") {
                    messageString = "You Build Apps"
                    imageString = "apps.iphone"
                    
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

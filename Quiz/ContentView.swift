//
//  ContentView.swift
//  Quiz
//
//  Created by scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationStack{
            ZStack {
                Color(.systemMint)
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 100.0){
                    Image("fairy rat")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    VStack(spacing: 10.0){
                        Text("Welcome to my quiz!!")
                            .font(.title)
                        Text("Click here to start quiz:")
                        
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: FirstQuestion() ) {
                            Text("Click here")
                        }
                    }
                    
                }
                
                .navigationTitle(" ")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(false)
                
                .padding()
                .background(Rectangle()
                    .cornerRadius(10)
                    .shadow(radius:15)
                    .foregroundColor(.white))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

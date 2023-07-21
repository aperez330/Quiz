//
//  FirstQuestion.swift
//  Quiz
//
//  Created by scholar on 7/14/23.
//

import SwiftUI

struct FirstQuestion: View {
   @State private var color = ""
    var body: some View {
        NavigationStack{
            ZStack {
                Color(.systemMint)
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 100.0){
                    VStack(spacing: 10.0){
                        Text("Which of these colors do you prefer?")
                            .font(.title)
                        Button("Blue"){
                            color = "🦋"
                        }
                        Button("Red"){
                            color = "🌹"
                        }
                        Button("Green"){
                            color = "🐸"
                        }
                        
                        Text(color)
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: SecondQuestion() ) {
                            Text("Next Question")
                        }
                    }
                    
                }
                
                .navigationTitle("Back")
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

struct FirstQuestion_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

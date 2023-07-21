//
//  ThirdQuestion.swift
//  Quiz
//
//  Created by scholar on 7/14/23.
//

import SwiftUI

struct ThirdQuestion: View {
    @State private var season = ""
    var body: some View {
        NavigationStack{
            ZStack {
                Color(.systemMint)
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 100.0){
                    VStack(spacing: 10.0){
                        Text("Which season do you prefer?")
                            .font(.title)
                        Button("Winter"){
                            season = "☃️"
                        }
                        Button("Spring"){
                            season = "🌸"
                        }
                        Button("Summer"){
                            season = "☀️"
                        }
                        Button("Autumn"){
                            season = "🍁"
                        }
                        Text(season)
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: ContentView() ) {
                            Text("Home")
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

struct ThirdQuestion_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuestion()
    }
}

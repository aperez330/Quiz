//
//  SecondQuestion.swift
//  Quiz
//
//  Created by scholar on 7/14/23.
//

import SwiftUI

struct SecondQuestion: View {
    @State private var day = ""
    var body: some View {
        NavigationStack{
            ZStack {
                Color(.systemMint)
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 100.0){
                    VStack(spacing: 10.0){
                        Text("Which of these days do you prefer?")
                            .font(.title)
                        Button("Friday"){
                            day = "🥳"
                        }
                        Button("Saturday"){
                            day = "🤩"
                        }
                        Button("Sunday"){
                            day = "🫠"
                        }
                        Text(day)
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: ThirdQuestion() ) {
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

struct SecondQuestion_Previews: PreviewProvider {
    static var previews: some View {
        SecondQuestion()
    }
}

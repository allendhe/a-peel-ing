//
//  ScoreView.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 28/07/22.
//

import SwiftUI

struct ScoreView: View {
    @State var score: Int
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        VStack(spacing: 80){
            VStack(spacing: 5){
                
                Text("Congratulations!!!")
                    .font(.system(size: 64, weight: .black, design: .rounded))
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                    .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ZStack {
                    VStack {
                        Text("Your Score: \(score)/18")
                        .questionTitle()
                        .padding(.init(top: 0, leading: 80, bottom: 0, trailing: 80))
                        
                        LottieView(fileName: "apeeling")
                            .frame(width: 800, height: 400, alignment: .center)
                        
                    }
                    LottieView(fileName: "confetti")
                        .frame(width: 600, height: 500, alignment: .center)
                }
            }
    
            PrimaryButton(text: "Play Again").onTapGesture {
                self.presentationMode.wrappedValue.dismiss()
            }
                .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: 5)
    }
}

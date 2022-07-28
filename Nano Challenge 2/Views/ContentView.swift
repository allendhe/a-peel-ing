//
//  ContentView.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 22/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 80){
                VStack(spacing: 5){
                    
                    LottieView(fileName: "apeeling")
                        .frame(width: 800, height: 400, alignment: .center)
        
                    Text("a-peel-ing")
                        .font(.system(size: 64, weight: .black, design: .rounded))
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                        .padding(.init(top: 20, leading: 0, bottom: 0, trailing: 0))
                    
                    Text("Ready to test your HIG knowledge?")
                    .questionTitle()
                    .padding(.init(top: 0, leading: 80, bottom: 0, trailing: 80))
                }
        
                NavigationLink(destination: QuestionView()){
                    PrimaryButton(text: "Let's play")
                        .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
        }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background{Color(red: 1, green: 0.9922, blue: 0.9608)}
            
            
        }.navigationViewStyle(.stack)
        }
       

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
//(red: 1, green: 0.9922, blue: 0.9608, alpha: 1) /* #fffdf5 */
}

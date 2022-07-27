//
//  QuestionView.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 25/07/22.
//

import SwiftUI

struct QuestionView: View {
    @State var QuestionIndex = 0 {
        didSet{
            if QuestionIndex > QuestionData.shared.count - 1 {
                QuestionIndex = 0
            }
        }
    }
    
    @State var isAnswered = false
    
    func buttonClick(){
        QuestionIndex = QuestionIndex + 1
        isAnswered.toggle()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isAnswered.toggle()
                }
    }
    
    var body: some View {
        ZStack {
            VStack(spacing:50){
                HStack{
                    Text(QuestionData.shared[QuestionIndex].QuestionString)
                        .question()
            
                }
                Image(QuestionData.shared[QuestionIndex].QuestionImage)
                    .padding(.bottom,40)
                
                HStack{
                    OptionButton(text: QuestionData.shared[QuestionIndex].QuestionOption[0])
                        .padding().onTapGesture {
                            buttonClick()
                        }
                    OptionButton(text: QuestionData.shared[QuestionIndex].QuestionOption[1])
                        .padding().onTapGesture {
                            buttonClick()
                        }
                }
        }
            
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background{Color(red: 1, green: 0.9922, blue: 0.9608)}
            
            if isAnswered{
                
             VStack {
                LottieView(fileName: "confetti")
                    .frame(width: 800, height: 400, alignment: .center)
                
                Text("You are correct")
                
             }
            }
        }
}
   
    
struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .previewInterfaceOrientation(.landscapeLeft)
            
    }
}
}

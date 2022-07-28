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
                isFinished = true
                
            }
        }
    }
    @State var score = 0
    @State var isFinished = false
    @State var isAnswered = false
    @State var isCorrect = false
    @State var selectedAnswer = -1
    func buttonClick(dAnswer: Int){
        selectedAnswer = dAnswer
        isAnswered.toggle()
        if QuestionData.shared[QuestionIndex].QuestionAnswer == QuestionData.shared[QuestionIndex].QuestionOption[selectedAnswer]{
            isCorrect = true
            score = score + 1
        } else{
            isCorrect = false
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            isAnswered.toggle()
            QuestionIndex = QuestionIndex + 1
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
                    if isAnswered && selectedAnswer == 0 {
                        if QuestionData.shared[QuestionIndex].QuestionOption[0] == QuestionData.shared[QuestionIndex].QuestionAnswer {
                            CorrectButton(text: QuestionData.shared[QuestionIndex].QuestionOption[0])
                                .padding()
                        } else {
                            WrongButton(text: QuestionData.shared[QuestionIndex].QuestionOption[0])
                                .padding()
                        }
                    }else{
                        OptionButton(text: QuestionData.shared[QuestionIndex].QuestionOption[0])
                            .padding().onTapGesture {
                                buttonClick(dAnswer: 0)
                            }
                    }
                    if isAnswered && selectedAnswer == 1{
                        if QuestionData.shared[QuestionIndex].QuestionOption[1] == QuestionData.shared[QuestionIndex].QuestionAnswer {
                            CorrectButton(text: QuestionData.shared[QuestionIndex].QuestionOption[1])
                                .padding()
                        } else {
                            WrongButton(text: QuestionData.shared[QuestionIndex].QuestionOption[1])
                                .padding()
                        }
                        
                    }else{
                        OptionButton(text: QuestionData.shared[QuestionIndex].QuestionOption[1])
                            .padding().onTapGesture {
                                buttonClick(dAnswer: 1)
                            }
                    }
                    
                }
        }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background{Color(red: 1, green: 0.9922, blue: 0.9608)}
            
            if isAnswered{
                
             VStack {
                LottieView(fileName: isCorrect && isAnswered ? "correct" : "wronggg")
                    .frame(width: 800, height: 400, alignment: .center)
                
                Text(isCorrect && isAnswered ? "You are correct" : "You are wrong")
                
             }
            }
        }.navigationBarBackButtonHidden(true)
            .sheet(isPresented: $isFinished, onDismiss: {
                score = 0
            }) {
                ScoreView(score: score)
            }
}
   
    
struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .previewInterfaceOrientation(.portrait)
            
    }
}
}

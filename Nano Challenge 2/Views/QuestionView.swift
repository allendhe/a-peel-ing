//
//  QuestionView.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 25/07/22.
//

import SwiftUI

struct QuestionView: View {
  @State var QuestionIndex = 0
//    @State private var orientation
//    = UIDeviceOrientation.unknown
    
    var body: some View {
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
                        QuestionIndex = QuestionIndex + 1
                    }
                OptionButton(text: QuestionData.shared[QuestionIndex].QuestionOption[1])
                    .padding().onTapGesture {
                        QuestionIndex = QuestionIndex + 1
                    }
            }
           
            
    }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background{Color(red: 1, green: 0.9922, blue: 0.9608)}
     
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .previewInterfaceOrientation(.landscapeLeft)
            
    }
}
}

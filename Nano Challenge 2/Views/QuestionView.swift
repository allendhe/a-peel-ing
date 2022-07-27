//
//  QuestionView.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 25/07/22.
//

import SwiftUI

struct QuestionView: View {
    
//    @State private var orientation
//    = UIDeviceOrientation.unknown
    
    var body: some View {
        VStack(spacing:50){
            HStack{
                Text("Let people view and navigate a data hierarchy using a series of vertical columns.")
                    .question()
        
            }
            Image("columnView")
                .padding(.bottom,40)
            
            HStack{
                OptionButton(text: "Column View")
                    .padding()
                OptionButton(text: "Column View")
                    .padding()
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

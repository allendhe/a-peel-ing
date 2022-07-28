//
//  OptionButton.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 25/07/22.
//

import SwiftUI

struct OptionButton: View {
    var text: String
    var background: Color = Color("QuestionBGColor")
    var body: some View {
       
        Text(text)
    
            .bold()
            .foregroundColor(Color(red: 0.262, green: 0.576, blue: 0.424))
            .padding(.init(top: 25, leading: 80, bottom: 25, trailing: 80))
            .fixedSize()
            .background(background)
            .cornerRadius(20)
            .shadow(color: .gray, radius: 2, x: 0, y: 1)
       
        
    }
}

struct OptionButton_Previews: PreviewProvider {
    static var previews: some View {
        OptionButton(text: "Column View")
    }
}

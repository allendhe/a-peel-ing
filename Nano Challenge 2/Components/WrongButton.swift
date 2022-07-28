//
//  WrongButton.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 28/07/22.
//

import SwiftUI

struct WrongButton: View {
    var text: String
    var background: Color = Color("WrongColor")
    var body: some View {
        Text(text)
    
            .bold()
            .foregroundColor(Color(red: 1, green: 0.9922, blue: 0.9608))
            .padding(.init(top: 25, leading: 80, bottom: 25, trailing: 80))
            .fixedSize()
            .background(background)
            .cornerRadius(20)
            .shadow(color: .gray, radius: 2, x: 0, y: 1)
    }
}

struct WrongButton_Previews: PreviewProvider {
    static var previews: some View {
        WrongButton(text: "Wrong Button")
    }
}

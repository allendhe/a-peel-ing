//
//  PrimaryButton.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 24/07/22.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color("AccentColor")
    
    
    var body: some View {
        Text(text)
            .font(.system(size: 24, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding(.init(top: 25, leading: 80, bottom: 25, trailing: 80))
            .background(background)
            .cornerRadius(20)
            .shadow(color: .gray, radius: 1, x: 0, y: 1)
            
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text:"Let's play")
    }
}

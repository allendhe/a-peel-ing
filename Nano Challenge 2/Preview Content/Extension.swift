//
//  Extension.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 24/07/22.
//

import Foundation
import SwiftUI

extension Text{
    func questionTitle() -> some View{
        self.font(.system(size: 30, weight: .semibold, design: .rounded))
        .foregroundColor(/*@START_MENU_TOKEN@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
}
    func question() -> some View{
        self.font(.system(size: 36, weight: .medium, design: .rounded))
            .foregroundColor(Color.black)
            
    }
}

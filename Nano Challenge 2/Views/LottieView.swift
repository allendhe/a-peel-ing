//
//  LottieView.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 26/07/22.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    typealias UIViewType = UIView
    
    func makeUIView(context: Context) -> some AnimationView  {
        let lottieAnimationView = AnimationView(name: "like")
        lottieAnimationView.play()
        return lottieAnimationView
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {

    }

}

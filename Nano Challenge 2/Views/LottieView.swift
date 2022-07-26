//
//  LottieView.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 26/07/22.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext <LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = AnimationView()
        let animation = Animation.named("apeeling")
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor )
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        //do nothing
    }
    
    typealias UIViewType = UIView
    

//    func makeUIView(context: Context) -> some AnimationView  {
//        let lottieAnimationView = AnimationView(name: "like")
//        lottieAnimationView.play()
//        return lottieAnimationView
//    }
//
//    func updateUIView(_ uiView: UIView, context: Context) {
//
//    }

}

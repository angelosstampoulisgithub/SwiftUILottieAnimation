//
//  LottieView.swift
//  SwiftUILottieAnimation
//
//  Created by Angelos Staboulis on 7/12/24.
//

import Foundation
import Lottie
import SwiftUI
struct LottieView:UIViewRepresentable{
    typealias UIViewType = LottieAnimationView
    func makeUIView(context: Context) -> LottieAnimationView {
        let animationView = LottieAnimationView(name:"coffeesplash")
        animationView.play()
        animationView.loopMode = .loop
        animationView.contentMode = .scaleAspectFit
        return animationView
    
    }
    
    func updateUIView(_ uiView: LottieAnimationView, context: Context) {
        
    }
    
}

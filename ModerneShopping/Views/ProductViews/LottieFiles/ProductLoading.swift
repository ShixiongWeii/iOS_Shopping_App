//
//  ProductLoading.swift
//  ModerneShopping
//
// Created by Shixiong Wei on 2024-04-10.
//

import SwiftUI
import Lottie

struct ProductLoading: UIViewRepresentable {
    
    var animationView = AnimationView()
    
    func makeUIView(context: UIViewRepresentableContext<ProductLoading>) -> UIView {
        let view = UIView(frame: .zero)
        
        animationView.animation = Animation.named("productLoading")
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([ animationView.heightAnchor.constraint(equalTo: view.heightAnchor), animationView.widthAnchor.constraint(equalTo: view.widthAnchor)])
        return view
    }
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<ProductLoading>) {
        
    }
}

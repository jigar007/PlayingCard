//
//  PlayingCardView.swift
//  PlayingCard
//
//  Created by Jigar Thakkar on 28/2/18.
//  Copyright © 2018 Jigar Thakkar. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    */
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        if let context = UIGraphicsGetCurrentContext(){
            context.addArc(center: CGPoint(x: bounds.midX, y: bounds.midY) , radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
            context.setLineWidth(0.5)
            UIColor.red.setStroke()
            UIColor.green.setFill()
            context.fillPath()
            context.strokePath()
            
        }
        
    }

}

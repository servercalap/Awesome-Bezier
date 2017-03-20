//
//  AddButtonView.swift
//  Awesome-Bezier
//
//  Created by QWERTY on 19/03/2017.
//  Copyright © 2017 servercalap. All rights reserved.
//

import UIKit

@IBDesignable

class AddButtonView: UIButton {

    @IBInspectable var fillColor : UIColor = UIColor.green
    @IBInspectable var isAdd:Bool = true
    
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        
        
        let plusHeight:CGFloat = 3.0
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        
        let plusPathDraw = UIBezierPath()
        
        plusPathDraw.lineWidth = plusHeight
        
        plusPathDraw.move(to: CGPoint(x:bounds.width/2 - plusWidth/2 + 0.5, y:bounds.height/2 + 0.5))
        
        plusPathDraw.addLine(to: CGPoint(x: bounds.width/2 + plusWidth/2 + 0.5, y:bounds.height/2 + 0.5))
        
            if isAdd {
        
                plusPathDraw.move(to: CGPoint(x:bounds.width/2 + 0.5, y:bounds.height/2 - plusWidth/2 + 0.5))
        
                
                plusPathDraw.addLine(to: CGPoint(x:bounds.width/2 + 0.5, y:bounds.height/2 + plusWidth/2 + 0.5))
        }
        
        UIColor.white.setStroke()
        plusPathDraw.stroke()
        
    }
    

}

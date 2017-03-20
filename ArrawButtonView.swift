//
//  ArrawButtonView.swift
//  Awesome-Bezier
//
//  Created by QWERTY on 19/03/2017.
//  Copyright © 2017 servercalap. All rights reserved.
//

import UIKit



@IBDesignable

class ArrawButtonView: UIButton {
    
    @IBInspectable var fillColor: UIColor = UIColor.green
    @IBInspectable var lineWidth :CGFloat =  2.0
    
    enum Direction{
        
        case up , down, left,right
    }
    
    var direction : Direction = Direction.right{
    
        didSet {
            review()
        }
    
    }

  
    func review(){
    
        setNeedsDisplay()
    }
    
     func directionToRadians(_ direction: ArrawButtonView.Direction) -> CGFloat{
    
        switch direction {
        case .up:
            return ArrawButtonView.degreesToRadians(90)
        
        case .down:
            return ArrawButtonView.degreesToRadians(-90)
            
        case .left :
            return ArrawButtonView.degreesToRadians(0)
            
        case .right:
            return ArrawButtonView.degreesToRadians(180)
        }
    }
    
    
    static func degreesToRadians(_ degrees: CGFloat) -> CGFloat {
        return degrees  * CGFloat(M_PI) / 180
    }

    override func draw(_ rect: CGRect) {
        
        let origin = CGPoint(x:12, y:self.frame.height / 2)
        let path = UIBezierPath()
        
        path.lineJoinStyle = CGLineJoin.round
        path.move(to: CGPoint(x:origin.x + self.frame.width * (1/2), y: frame.height - 10))
        path.addLine(to: CGPoint(x: origin.x , y: origin.y))
        path.addLine(to: CGPoint(x: origin.x + self.frame.width * (1/2), y:10))
        fillColor.setStroke()
        path.lineWidth = lineWidth
        path.stroke()
        self.backgroundColor = UIColor.clear
        self.transform = CGAffineTransform(rotationAngle: directionToRadians(self.direction))
    }


}

//
//  NavButton.swift
//  foodApp
//
//  Created by Paras Goel on 6/28/22.
//

import UIKit

class NavButton: UIButton {
    
    override func draw(_ rect: CGRect) {
        
        //thickness of the line
        let lineThick:CGFloat = 2.0
        
        //length of your ine relative to your button
        let lineLength:CGFloat = min(bounds.width, bounds.height) * 0.8
        
        //color of your line
        let lineColor: UIColor = UIColor.black
        
        // this wll add small padding from button border to your first line and other lines
        let marginGap:CGFloat = 5.0
        
        //we need three line
        for line in 0...3 {
            // cretae path
            let linePath = UIBezierPath()
            linePath.lineWidth = lineThick
            
            //start point of line
            linePath.move(to:)(CGPoint(
                x: bounds.width/2 - lineLength/2,
                y: 6.0 * CGFloat(line) + marginGap
                ))
            //end point of line
            linePath.addLine(to:)(CGPoint(
                x: bounds.width/2 + lineLength/2,
                y: 6.0 * CGFloat(line) + marginGap
                ))
            
            //set line color
            lineColor.setStroke()
            
            //draw the line
            linePath.stroke()
        }
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

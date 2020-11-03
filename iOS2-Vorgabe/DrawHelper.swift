//
//  DrawHelper.swift
//  iOS2-Vorgabe
//
//  Created by Klaus Jung on 10.10.14.
//  Copyright (c) 2014 Klaus Jung. All rights reserved.
//

import UIKit

class DrawHelper {

    class func drawSquare(x: Double, y: Double, size: Double, color: UIColor) {
        let path = UIBezierPath(rect: CGRect(x: CGFloat(x-size/2), y: CGFloat(y-size/2), width: CGFloat(size), height: CGFloat(size)))
        color.setFill()
        path.fill()
    }
    
    class func drawCircle(x: Double, y: Double, size: Double, color: UIColor) {
        let path = UIBezierPath(ovalIn: CGRect(x: CGFloat(x-size/2), y: CGFloat(y-size/2), width: CGFloat(size), height:CGFloat(size)))
        color.setFill()
        path.fill()
    }
    
    class func drawTriangle(x: Double, y: Double, size: Double, color: UIColor) {
        let path = UIBezierPath()
        let y0 = CGFloat(y - 4)
        let x0 = CGFloat(x)
        let d = CGFloat(size/2)
        path.move(to: CGPoint(x: x0, y: y0-d))
        path.addLine(to: CGPoint(x: x0+d, y: y0+d))
        path.addLine(to: CGPoint(x: x0-d, y: y0+d))
        path.close()
        color.setFill()
        path.fill()
    }
    
    class func drawDescription(area a: Double, circumferrence c: Double, atX x: Double, y: Double) {
        let text: NSString = String(format: "%.1lf / %.1lf", a, c) as NSString
        UIColor.black.setFill()
        let font:UIFont? = UIFont(name: "Helvetica", size: 12)  // failable constructor in Swirt 1.1 (Xcode 6.1): returned object is UIFont? not UIFont (as of Swift 1.0)
        let style: NSMutableParagraphStyle = NSMutableParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        style.lineBreakMode = NSLineBreakMode.byClipping
        style.alignment = NSTextAlignment.center
        if let f = font {
            text.draw(in: CGRect(x: CGFloat(x-100), y: CGFloat(y), width: 200, height:20), withAttributes: [.font : f, .paragraphStyle : style])
        }
        
    }
    
    class func drawGlyphNumber(index: Int, atX x: Double, y: Double) {
        let text: NSString = String(format: "%i", index+1) as NSString
        let font:UIFont? = UIFont(name: "Helvetica-Bold", size: 18)
        let style: NSMutableParagraphStyle = NSMutableParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        style.lineBreakMode = NSLineBreakMode.byClipping
        style.alignment = NSTextAlignment.center
        if let _ = font {
            text.draw(in: CGRect(x: CGFloat(x-10), y: CGFloat(y-10), width: 20, height:20), withAttributes: [.font : font!, .paragraphStyle : style, .foregroundColor : UIColor.white])
        }
    }
}

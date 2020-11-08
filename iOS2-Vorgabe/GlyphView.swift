//
//  GlyphView.swift
//  iOS2-Vorgabe
//
//  Created by Klaus Jung on 10.10.14.
//  Copyright (c) 2014 Klaus Jung. All rights reserved.
//

import UIKit

enum GlyphType: Int {
    case square = 0, circle, triangle
}

class GlyphView: UIView {
    
    //create glyphs array
    var glyphs = [Glyph?](repeating: nil, count: 3)
    
    // MARK: - Change Handlers
    
    func glyph(index: Int, changedPositionX x: Double, positionY y: Double) {
        glyphs[index]?.center = Point(x:x,y:y)
    }
    
    func glyph(index: Int, changedType type: GlyphType) {
        // hint: use a switch statement to deal with different values of type
        // hint: type a single "." after "case " and use the editor's text completion
        let shape = glyphs[index]
        
        let defaultSize = 30.0
        let defaultColor = UIColor.black
        let defaultPoint = Point(x: 0, y: 0)
        
        let center = shape?.center == nil ? defaultPoint : Point(x: shape!.center.x, y: shape!.center.y)
        let color = shape?.color == nil ? defaultColor : shape!.color
        
        switch type {
        case .square:
            let size = shape?.size == nil ? defaultSize : shape!.size
            glyphs[index] = Square(id :index, gSize : size, gColor:color, gCenter: center, gShowDescription: false)
            break
        case .circle:
            let size = shape?.size == nil ? defaultSize : shape!.size
            glyphs[index] = Circle(id :index, gSize : size, gColor:color, gCenter: center, gShowDescription: false)
            break
        case .triangle:
            let size = shape?.size == nil ? defaultSize : shape!.size
            glyphs[index] = Triangle(id :index, gSize : size, gColor:color, gCenter: center, gShowDescription: false)
            break
        }
    }
    
    func glyph(index: Int, changedColor color: UIColor) {
        glyphs[index]?.color = color
    }
    
    func glyph(index: Int, changedSize size: Double) {
        glyphs[index]?.size = size
    }
    
    func glyph(index: Int, showDescription show: Bool) {
        glyphs[index]?.showDescription = show
    }
    

    // MARK: - Drawing
    
    override func draw(_ rect: CGRect)
    {
        for glyph in glyphs{
            glyph?.paint()
        }
    }

}
// aufgabe 5
// struct Point
struct Point {
    var x: Double
    var y: Double
}

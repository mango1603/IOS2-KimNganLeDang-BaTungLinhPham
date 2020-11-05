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
    // MARK: - Change Handlers
    
    var glyphs : [Glyph?] = [Square(),Circle(),Triangle()]
    
    func glyph(index: Int, changedPositionX x: Double, positionY y: Double) {
        glyphs[index]?.center = Point(x:x,y:y)
    }
    
    func glyph(index: Int, changedType type: GlyphType) {
        // hint: use a switch statement to deal with different values of type
        // hint: type a single "." after "case " and use the editor's text completion
        switch type {
        case .square:
            glyphs[index]? = Square()
            break
        case .circle:
            glyphs[index]? = Circle()
            break
        case .triangle:
            glyphs[index]? = Triangle()
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

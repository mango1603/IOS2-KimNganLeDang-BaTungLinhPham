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
    
    func glyph(index: Int, changedPositionX x: Double, positionY y: Double) {
        
    }
    
    func glyph(index: Int, changedType type: GlyphType) {
        // hint: use a switch statement to deal with different values of type
        // hint: type a single "." after "case " and use the editor's text completion
    }
    
    func glyph(index: Int, changedColor color: UIColor) {
        
    }
    
    func glyph(index: Int, changedSize size: Double) {
        
    }
    
    func glyph(index: Int, showDescription show: Bool) {
        
    }
    

    // MARK: - Drawing
    
    override func draw(_ rect: CGRect)
    {
        // Drawing code
    }

}

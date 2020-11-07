//
//  Circle.swift
//  iOS2-Vorgabe
//
//  Created by Kim on 04.11.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.

// aufgabe 7

import Foundation

class Circle : Glyph {
   
    override var area : Double {
        let r = size/2
        return Double.pi * r * r
    }
    override var circumference: Double{
        let r = size/2
        return 2 * Double.pi * r
    }
    
    override func paint()
    {
        DrawHelper.drawCircle(x: center.x, y: center.y, size: size, color: color)
        DrawHelper.drawGlyphNumber(index: index, atX: center.x, y: center.y)
        if showDescription { super.paint() }
    }
}

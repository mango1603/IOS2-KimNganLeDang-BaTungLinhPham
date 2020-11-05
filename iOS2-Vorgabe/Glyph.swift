//
//  Glyph.swift
//  iOS2-Vorgabe
//
//  Created by Kim on 04.11.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.
//
//aufgabe 6
import Foundation
import UIKit

class Glyph: Drawing {
    /*stored properties*/
    var size: Double
    var color: UIColor
    var center: Point
    var showDescription: Bool
    
    func paint() {
        //drawGlyphMethod
        if showDescription {
            DrawHelper.drawDescription(area: area, circumferrence: circumference, atX: center.x, y: center.y)
        }
    }
    
    /*computed properties*/
    var area: Double {
        //calculate area
        return size
    }
    var circumference: Double{
        //calculate circumference?
        return size
    }
    /*Initializing values*/
    init(size: Double = 1, color:UIColor = UIColor.black ,center: Point = Point(x: 0.0 , y: 0.0), showDescription: Bool = true) {
        self.size = size
        self.center = center
        self.showDescription = showDescription
        self.color = color
    }
}

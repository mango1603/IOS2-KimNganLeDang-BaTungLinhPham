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
    var index : Int
    
    func paint() {
       DrawHelper.drawDescription(area: area, circumferrence: circumference, atX: center.x, y: center.y)
    }
    
    /*computed properties*/
    var area: Double {
        //calculate area
        return 0.0
    }
    var circumference: Double{
        //calculate circumference?
        return 0.0
    }
    /*Initializing values*/
    init(id: Int, gSize: Double, gColor:UIColor, gCenter: Point, gShowDescription: Bool) {
        self.index = id
        self.size = gSize
        self.center = gCenter
        self.color = gColor
        self.showDescription = gShowDescription
        
    }
}

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
        //TODO
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
    init(size: Double, color:UIColor,center: Point, showDescription: Bool) {
        self.size = size
        self.center = center
        self.showDescription = showDescription
        self.color = UIColor.black
    }
}

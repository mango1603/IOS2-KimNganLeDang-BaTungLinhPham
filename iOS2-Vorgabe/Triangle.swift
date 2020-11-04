//
//  Triangle.swift
//  iOS2-Vorgabe
//
//  Created by Kim on 04.11.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.

// aufgabe 7

import Foundation
class Triangle : Glyph{
    //Triangle is an isosceles triangle with base length = size and height = size.
    override var area: Double{
        return (size*size)/2
    }
    
    override var circumference: Double{
        let tri_side = sqrt(pow(size,2) + pow(size/2,2))
        let umfang = tri_side + tri_side + size
        return umfang
    }
    
    override func paint(){
        //TODO
    }
}

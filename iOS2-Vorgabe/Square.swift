//
//  Square.swift
//  iOS2-Vorgabe
//
//  Created by Kim on 04.11.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.

// aufgabe 7

import Foundation
class Square : Glyph {
    override var area: Double{
        return size*size
    }
    
    override var circumference: Double{
        return (size + size)*2
    }
    
    override func paint()
    {
        //TODO
    }
}


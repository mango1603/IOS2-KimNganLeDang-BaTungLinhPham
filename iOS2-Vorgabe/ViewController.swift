//
//  ViewController.swift
//  iOS2-Vorgabe
//
//  Created by Klaus Jung on 10.10.14.
//  Copyright (c) 2014 Klaus Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var typeIndex = [0, 1, 2]
    var colorIndex = [1, 3, 0]
    var size = [35.0, 40.0, 50.0]
    let color = [ 
        UIColor(red: 1,   green: 0, blue: 0,   alpha: 0.75), 
        UIColor(red: 0,   green: 1, blue: 0,   alpha: 0.75),
        UIColor(red: 0,   green: 0, blue: 1,   alpha: 0.75),
        UIColor(red: 0.5, green: 0, blue: 0.5, alpha: 0.75)
    ]

    @IBOutlet weak var glyphView: GlyphView!
    @IBOutlet weak var glyphIndexControl: UISegmentedControl!
    @IBOutlet weak var glyphTypeControl: UISegmentedControl!
    @IBOutlet weak var glyphColorControl: UISegmentedControl!
    @IBOutlet weak var glyphSizeSlider: UISlider!
    
    @IBAction func glyphChanged(_ sender: AnyObject) {
        glyphTypeControl.selectedSegmentIndex = typeIndex[glyphIndexControl.selectedSegmentIndex]
        glyphColorControl.selectedSegmentIndex = colorIndex[glyphIndexControl.selectedSegmentIndex]
        glyphSizeSlider.value = Float(size[glyphIndexControl.selectedSegmentIndex])
        glyphView.setNeedsDisplay()
    }
    
    @IBAction func typeChanged(_ sender: AnyObject) {
        let i = glyphIndexControl.selectedSegmentIndex
        typeIndex[i] = glyphTypeControl.selectedSegmentIndex
        glyphView.glyph(index: i, changedType: GlyphType(rawValue: typeIndex[i]) ?? .square)
        glyphView.setNeedsDisplay()
    }
    
    @IBAction func colorChanged(_ sender: AnyObject) {
        let i = glyphIndexControl.selectedSegmentIndex
        colorIndex[i] = glyphColorControl.selectedSegmentIndex
        glyphView.glyph(index: i, changedColor: color[colorIndex[i]])
        glyphView.setNeedsDisplay()
    }
    
    @IBAction func sizeChanged(_ sender: AnyObject) {
        let i = glyphIndexControl.selectedSegmentIndex
        size[i] = Double(glyphSizeSlider.value)
        glyphView.glyph(index: i, changedSize: size[i])
        glyphView.setNeedsDisplay()
    }
    
    @IBAction func sizeChangeBegin(_ sender: AnyObject) {
        glyphView.glyph(index: glyphIndexControl.selectedSegmentIndex, showDescription: true)
        glyphView.setNeedsDisplay()
    }
    
    @IBAction func sizeChangeEnd(_ sender: AnyObject) {
        glyphView.glyph(index: glyphIndexControl.selectedSegmentIndex, showDescription: false)
        glyphView.setNeedsDisplay()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        glyphView.glyph(index: glyphIndexControl.selectedSegmentIndex, showDescription: true)
        positionChanged(touches as NSSet)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        positionChanged(touches as NSSet)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        glyphView.glyph(index: glyphIndexControl.selectedSegmentIndex, showDescription: false)
        positionChanged(touches as NSSet)
    }
    
    func positionChanged(_ touches: NSSet) {
        let touch = touches.anyObject() as! UITouch
        let pos = touch.location(in: glyphView)
        let i = glyphIndexControl.selectedSegmentIndex
        glyphView.glyph(index: i, changedPositionX: Double(pos.x), positionY: Double(pos.y))
        glyphView.setNeedsDisplay()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let x = [50.0, 150.0, 250.0]
        let y = [250.0, 150.0, 200.0]
        
        for i in 0..<typeIndex.count {
            glyphView.glyph(index: i, changedType: GlyphType(rawValue: typeIndex[i]) ?? .square)
            glyphView.glyph(index: i, changedColor: color[colorIndex[i]])
            glyphView.glyph(index: i, changedSize: size[i])
            glyphView.glyph(index: i, changedPositionX: x[i], positionY: y[i])
        }
        glyphChanged(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { (context) in
            self.glyphView.setNeedsDisplay()
        }) { (context) in
            // completion closure
            self.glyphView.setNeedsDisplay()
        }
    }

}


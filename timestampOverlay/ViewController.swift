//
//  ViewController.swift
//  timestampOverlay
//
//  Created by Soulchild on 26/04/2020.
//  Copyright © 2020 fluffy. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var currentTimeTextField: NSTextField!
    var timeWindow : NSWindow!
    var timer : Timer!
    
    var dateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        currentTimeTextField.stringValue = dateFormatter.string(from: Date())
        currentTimeTextField.font = NSFont.systemFont(ofSize: 24.0)
        currentTimeTextField.textColor = NSColor.white
        currentTimeTextField.isEditable = false
        currentTimeTextField.isBezeled = false

        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateTextFieldTime), userInfo: nil, repeats: true)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @objc func updateTextFieldTime(){
        self.currentTimeTextField.stringValue = self.dateFormatter.string(from: Date())
    }
}


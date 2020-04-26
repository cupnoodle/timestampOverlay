//
//  WindowController.swift
//  timestampOverlay
//
//  Created by Soulchild on 26/04/2020.
//  Copyright © 2020 fluffy. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        window?.styleMask = [.resizable]
        
        window?.isMovableByWindowBackground = true
        
//        window?.makeKeyAndOrderFront(nil)
        window?.level = .floating
        window?.backgroundColor = .black
    }

}

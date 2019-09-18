//
//  UILabelExtension.swift
//  spaceProgram
//
//  Created by Pedro Vargas on 03/09/19.
//  Copyright © 2019 minichallenge. All rights reserved.
//

import UIKit


extension UILabel {
    func animate(newText: String, characterDelay: TimeInterval) {
        DispatchQueue.main.async {
            self.text = ""
            
            for (index, character) in newText.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + characterDelay * Double(index)) {
                    self.text?.append(character)
                }
            }
        }
    }
    
}

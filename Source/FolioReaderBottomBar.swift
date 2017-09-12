//
//  FolioReaderBottomBar.swift
//  FolioTest
//
//  Created by Ilya Filinovich on 12.09.17.
//  Copyright © 2017 Mobile Up. All rights reserved.
//

import UIKit

class FolioReaderBottomBar: UIView {

    var playButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setHidden(_ hidden: Bool, animated: Bool) {
        UIView.animate(withDuration: 0.3) {
            self.alpha = hidden ? 0 : 0.8
        }
    }
    
    func setup() {

        playButton.translatesAutoresizingMaskIntoConstraints = false
        playButton.setImage(#imageLiteral(resourceName: "play-icon"), for: .normal)
        playButton.backgroundColor = .green
        
        
        addSubview(playButton)
        
        // Configure contraints
        var constraints = [NSLayoutConstraint]()
        let views = ["button": playButton]
        
        NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[button]-0-|", options: [], metrics: nil, views: views).forEach {
            constraints.append($0 as NSLayoutConstraint)
        }
        
        NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[button]-0-|", options: [], metrics: nil, views: views).forEach {
            constraints.append($0 as NSLayoutConstraint)
        }
        
        self.addConstraints(constraints)
        
    }

}

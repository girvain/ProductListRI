//
//  MyView.swift
//  ProductListRI
//
//  Created by Gavin Ross on 10/11/2020.
//  Copyright © 2020 Gavin Ross. All rights reserved.
//

import UIKit

class MyView: UIView {

    @IBOutlet var contentView: UIView!
    @IBInspectable @IBOutlet var imageView: UIImageView!
    
    
    // For using init in code
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .red
        commonInit()
    }
    
    // For using init in IB
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("MyView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

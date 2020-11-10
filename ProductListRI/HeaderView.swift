//
//  HeaderView.swift
//  ProductListRI
//
//  Created by Gavin Ross on 10/11/2020.
//  Copyright © 2020 Gavin Ross. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var imageView: UIImageView!
    
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
        Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    

}

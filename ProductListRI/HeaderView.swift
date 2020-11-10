//
//  HeaderView.swift
//  ProductListRI
//
//  Created by Gavin Ross on 10/11/2020.
//  Copyright © 2020 Gavin Ross. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet var label: UILabel!
    
    
    // For using init in code
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        self.backgroundColor = .red
        commonInit()
    }
    
    // For using init in IB
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("ProductCell", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
}

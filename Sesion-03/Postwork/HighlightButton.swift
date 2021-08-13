import UIKit

class HighlightButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setTitleColor(<#button text color when tapped#>, forState: .Highlighted)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    override var highlighted: Bool {
        get {
            return super.highlighted
        }
        set {
            if newValue {
                backgroundColor = <#color when tapped#>
            }
            else {
                backgroundColor = <#color for normal state#>
            }
            super.highlighted = newValue
        }
    }

}

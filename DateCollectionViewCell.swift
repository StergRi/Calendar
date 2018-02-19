

import UIKit

class DateCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var DateLabel: UILabel!
    
    @IBOutlet weak var Circle: UIView!
    
    
    func DrawCircle() {
        
        let circleCenter = Circle.center
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: (Circle.bounds.width/2 - 5), startAngle: -CGFloat.pi/2, endAngle: (2 * CGFloat.pi), clockwise: true)
        
        let CircleLayer = CAShapeLayer()
        CircleLayer.path = circlePath.cgPath
        CircleLayer.strokeColor = UIColor.red.cgColor
        CircleLayer.lineWidth = 2
        CircleLayer.strokeEnd = 0
        CircleLayer.fillColor = UIColor.clear.cgColor
        CircleLayer.lineCap = kCALineCapRound
        
        let Animation = CABasicAnimation(keyPath: "strokeEnd")
        Animation.duration = 1.5
        Animation.toValue = 1
        Animation.fillMode = kCAFillModeForwards
        Animation.isRemovedOnCompletion = false
        
        CircleLayer.add(Animation, forKey: nil)
        Circle.layer.addSublayer(CircleLayer)
        Circle.layer.backgroundColor = UIColor.clear.cgColor
        
    }
    
}

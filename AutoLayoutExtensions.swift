
import UIKit


extension UIView {
    
    
    // MARK: Size constraints
    
    
    func pinHeight(equalTo constant: CGFloat) {
        
        self.heightAnchor.constraint(
            
            equalToConstant: constant
            
        ).isActive = true
    }
    
    
    func pinWidth(equalTo constant: CGFloat) {
        
        self.widthAnchor.constraint(
            
            equalToConstant: constant
            
        ).isActive = true
    }
    
    
    func pinSameHeight(as otherView: UIView) {
        
        self.heightAnchor.constraint(
            
            equalTo: otherView.heightAnchor,
            
            multiplier: 1,
            constant: 0
            
        ).isActive = true
    }
    
    
    func pinSameWidth(as otherView: UIView) {
        
        self.widthAnchor.constraint(
            
            equalTo: otherView.widthAnchor,
            
            multiplier: 1,
            constant: 0
            
        ).isActive = true
    }
    
    
    func pinAspectRatio(equalTo value: CGFloat) {
        
        self.widthAnchor.constraint(
            
            equalTo: self.heightAnchor,
            
            multiplier: value,
            constant: 0
            
        ).isActive = true
    }
}


extension UIView {
    
    
    // MARK: Edge constraints
    
    
    func pinTop(with otherView: UIView, margin: CGFloat = 0) {
        
        self.topAnchor.constraint(
            
            equalTo: otherView.topAnchor,
            constant: margin
            
        ).isActive = true
    }
    
    
    func pinBottom(with otherView: UIView, margin: CGFloat = 0) {
        
        self.bottomAnchor.constraint(
            
            equalTo: otherView.bottomAnchor,
            constant: -margin
            
        ).isActive = true
    }
    
    
    func pinLeft(with otherView: UIView, margin: CGFloat = 0) {
        
        self.leftAnchor.constraint(
            
            equalTo: otherView.leftAnchor,
            constant: margin
            
        ).isActive = true
    }
    
    
    func pinRight(with otherView: UIView, margin: CGFloat = 0) {
        
        self.rightAnchor.constraint(
            
            equalTo: otherView.rightAnchor,
            constant: -margin
            
        ).isActive = true
    }
    
    
    func pinTop(withMarginOf otherView: UIView, margin: CGFloat = 0) {
        
        self.topAnchor.constraint(
            
            equalTo: otherView.layoutMarginsGuide.topAnchor,
            constant: margin
        
        ).isActive = true
    }
    
    
    func pinBottom(withMarginOf otherView: UIView, margin: CGFloat = 0) {
        
        self.bottomAnchor.constraint(
            
            equalTo: otherView.layoutMarginsGuide.bottomAnchor,
            constant: -margin
            
        ).isActive = true
    }
    
    
    func pinLeft(withMarginOf otherView: UIView, margin: CGFloat = 0) {
        
        self.leftAnchor.constraint(
            
            equalTo: otherView.layoutMarginsGuide.leftAnchor,
            constant: margin
            
        ).isActive = true
    }
    
    
    func pinRight(withMarginOf otherView: UIView, margin: CGFloat = 0) {
        
        self.rightAnchor.constraint(
            
            equalTo: otherView.layoutMarginsGuide.rightAnchor,
            constant: -margin
            
        ).isActive = true
    }
    
    
    func pinTop(withFrameOf scrollView: UIScrollView, margin: CGFloat) {
        
        self.topAnchor.constraint(
            
            equalTo: scrollView.frameLayoutGuide.topAnchor,
            constant: margin
            
        ).isActive = true
    }
    

    func pinBottom(withFrameOf scrollView: UIScrollView, margin: CGFloat) {
        
        self.bottomAnchor.constraint(
            
            equalTo: scrollView.frameLayoutGuide.bottomAnchor,
            constant: -margin
            
        ).isActive = true
    }
    

    func pinLeft(withFrameOf scrollView: UIScrollView, margin: CGFloat = 0) {
        
        self.leftAnchor.constraint(
            
            equalTo: scrollView.frameLayoutGuide.leftAnchor,
            constant: margin
            
        ).isActive = true
    }
    
    
    func pinRight(withFrameOf scrollView: UIScrollView, margin: CGFloat = 0) {
        
        self.rightAnchor.constraint(
            
            equalTo: scrollView.frameLayoutGuide.rightAnchor,
            constant: -margin
            
        ).isActive = true
    }
    
    
    func pinTopBottom(
        
        with otherView: UIView,
        
        topMargin: CGFloat = 0,
        bottomMargin: CGFloat = 0
        
    ) {
        
        pinTop(with: otherView, margin: topMargin)
        pinBottom(with: otherView, margin: bottomMargin)
    }
    
    
    func pinLeftRight(
        
        with otherView: UIView,
        
        leftMargin: CGFloat = 0,
        rightMargin: CGFloat = 0
        
    ) {
        
        pinLeft(with: otherView, margin: leftMargin)
        pinRight(with: otherView, margin: rightMargin)
    }
    
    
    func pinTopBottom(
        
        withMarginOf otherView: UIView,
        
        topMargin: CGFloat = 0,
        bottomMargin: CGFloat = 0
        
    ) {
        
        pinTop(withMarginOf: otherView, margin: topMargin)
        pinBottom(withMarginOf: otherView, margin: bottomMargin)
    }
    
    
    func pinLeftRight(
        
        withMarginOf otherView: UIView,
        
        leftMargin: CGFloat = 0,
        rightMargin: CGFloat = 0
        
    ) {
        
        pinLeft(withMarginOf: otherView, margin: leftMargin)
        pinRight(withMarginOf: otherView, margin: rightMargin)
    }
    
    
    func pinTopBottom(
        
        withFrameOf scrollView: UIScrollView,
        
        topMargin: CGFloat = 0,
        bottomMargin: CGFloat = 0
    
    ) {
        
        pinTop(withFrameOf: scrollView, margin: topMargin)
        pinBottom(withFrameOf: scrollView, margin: bottomMargin)
    }
    
    
    func pinLeftRight(
        
        withFrameOf scrollView: UIScrollView,
        
        leftMargin: CGFloat = 0,
        rightMargin: CGFloat = 0
        
    ) {
        
        pinLeft(withFrameOf: scrollView, margin: leftMargin)
        pinRight(withFrameOf: scrollView, margin: rightMargin)
    }
    
    
    func pinTopLeftBottomRight(with otherView: UIView, constantMargin: CGFloat = 0) {
        
        pinTop(with: otherView, margin: constantMargin)
        pinLeft(with: otherView, margin: constantMargin)
        pinBottom(with: otherView, margin: constantMargin)
        pinRight(with: otherView, margin: constantMargin)
    }
    
    
    func pinTopLeftBottomRight(withMarginOf otherView: UIView, constantMargin: CGFloat = 0) {
        
        pinTop(withMarginOf: otherView, margin: constantMargin)
        pinLeft(withMarginOf: otherView, margin: constantMargin)
        pinBottom(withMarginOf: otherView, margin: constantMargin)
        pinRight(withMarginOf: otherView, margin: constantMargin)
    }
    
    
    func pinTopLeftBottomRight(withFrameOf scrollView: UIScrollView, constantMargin: CGFloat = 0) {
        
        pinTop(withFrameOf: scrollView, margin: constantMargin)
        pinLeft(withFrameOf: scrollView, margin: constantMargin)
        pinBottom(withFrameOf: scrollView, margin: constantMargin)
        pinRight(withFrameOf: scrollView, margin: constantMargin)
    }
    
    func pinBelow(_ otherView: UIView, withMargin margin: CGFloat = 0) {
        
        self.topAnchor.constraint(
            
            equalTo: otherView.bottomAnchor,
            constant: margin
        
        ).isActive = true
    }
}

# AutoLayout Extensions
> A set of Swift extensions to speed up working with Auto Layout from code.


## Example

```swift
let myView = UIView()

// do not forget to do this otherwise the constraints will no work
myView.translatesAutoresizingMaskIntoConstraints = false

myView.pinSameWidth(as: otherView)
myView.pinAspectRatio(equalTo: 16/9)

myView.pinLeftRight(with: otherView)

// uses layoutMarginsGuide
myView.pinTop(withMarginOf: superView)
```


## Licence

Public domain.

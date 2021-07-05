/**
 This is an extension that modifies the navigationBar according to the Design System.
 It represents the component AppBar - Top.
 
 - NOTE:
 This component is available in the following variants:
 - ✅ Standard
 - ❌ Base

 With the following attribute status:
 - ✅ Action right
 - ✅ Action left
 - Color:
    - ✅ `Default`
    - ✅ `Primary`
    - ✅ `None`
    - ✅ `Inverse`
 - Elevation:
    - ✅ `True`
    - ✅ `False`
 - Content position:
    - ✅ `Center`
    - ✅ `Left`
 - Content type:
    - ✅ `Text` (default, not configurable)
    - ❌ `Media`
    - ❌ `Search`
 - Content proeminent:
    - ✅ `False` (default, not configurable)
    - ❌ `True`
 - Behavior:
    - ✅ `Fixed` (default, not configurable)
    - ❌ `Scroll`
 
 The navigation bar colors change accordint to the current brand configured and to the light/dark mode properties.
 The component is available only with the variant `standard`.
 
 Examples of usage:
 
            navigationController.configure(color: .primary)
            navigationController.configure(elevation: true)

 - Requires:
        It's necessary to configure the Design System with a theme or fatalError will be raised.

            DesignSystem().configure(with: AvailableTheme)
*/

public extension UINavigationController {
    /// Sets the color for navigation bar and its subviews
    /// - Parameter color: an option from `AppBarColor` enum
    func configure(color: AppBarColor) {
        navigationBar.shadowImage = UIImage()
        navigationBar.barTintColor = color.backgroundColor
        navigationBar.tintColor = color.contentColor
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: color.contentColor
        ]
    }
    
    /// Sets an elevation for the navigation bar, which adds a slight shadow to it
    /// - Parameter elevation: a boolean to add or remove the attribute
    func configure(elevation: Bool) {
        if elevation {
            NatElevation.apply(on: navigationBar, elevation: .tiny)
        } else {
            NatElevation.apply(on: navigationBar, elevation: .none)
        }
    }
}

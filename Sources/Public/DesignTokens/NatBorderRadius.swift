/**
  NatBorderRadius is a enum that has access to radius properties from the Design System.
  This properties are used to set corner radius of view's layer.
  According with the current Brand in the Design System this properties can change.

    All properties returns a CGFloat.

    Exemple of usage:

        containerView.layer.cornerRadius = NatBorderRadius.small
        button.layer.cornerRadius = NatBorderRadius.circle(viewHeight: DSSizes.large)

 - Requires:
        It's necessary to configure the Design System current Brand at DesignSystem class
        or fatalError will be raised.

            DesignSystem().configure(with: Brand)
*/

public enum NatBorderRadius {
    public static var small: CGFloat { getTokenFromTheme(\.borderRadiusSmall) }
    public static var medium: CGFloat { getTokenFromTheme(\.borderRadiusMedium) }
    public static var large: CGFloat { getTokenFromTheme(\.borderRadiusLarge) }
    public static func circle(viewHeight: CGFloat) -> CGFloat { viewHeight / 2 }
}

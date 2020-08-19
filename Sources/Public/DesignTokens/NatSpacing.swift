/**
  NatSpacing is a enum that has access to spacing properties from the Design System.
  This properties are used with constraints to handle view spaces between other views or view
  properties like safeAreaLayoutGuide.
  According with the current Brand in the Design System this spacing properties can change.

    All properties returns a CGFloat.

    Exemple of usage:

        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: NatSpacing.tiny)
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: NatSpacing.large)

 - Requires:
        It's necessary to configure the Design System current Brand at DesignSystem class
        or fatalError will be raised.

            DesignSystem().configure(with: Brand)
*/

public enum NatSpacing {
    public static var micro: CGFloat { getTokenFromTheme(\.spacingMicro) }
    public static var tiny: CGFloat { getTokenFromTheme(\.spacingTiny) }
    public static var small: CGFloat { getTokenFromTheme(\.spacingSmall) }
    @available(*, deprecated, message: "Use .standard instead")
    public static var standart: CGFloat { getTokenFromTheme(\.spacingStandard) }
    public static var standard: CGFloat { getTokenFromTheme(\.spacingStandard) }
    public static var semi: CGFloat { getTokenFromTheme(\.spacingSemi) }
    public static var large: CGFloat { getTokenFromTheme(\.spacingLarge) }
    public static var xLarge: CGFloat { getTokenFromTheme(\.spacingXLarge) }
}

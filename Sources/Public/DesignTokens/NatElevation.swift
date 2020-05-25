/**
  NatElevation is a struct that has access to elevation attributes properties from the Design System.
  This properties are used with view.layer to create elevation visual effect.
  According with the current Brand in the Design System this properties can change.

    Exemple of usage:

        NatElevation.apply(onView: variantCardView, with: elevation09)

 - Requires:
        It's necessary to configure the Design System current Brand at DesisgnSystem class
        or fatalError will be raised.

            DesignSystem().configure(with: Brand)
*/

public struct NatElevation {
    public static func apply(onView view: UIView, elevation: Elevation) {
        let attributes = getTheme().elevations[keyPath: elevation.rawValue]

        ViewStyle.applyElevation(onView: view, with: attributes)
    }
}

extension NatElevation {
    public enum Elevation {
        case elevation01
        case elevation02
        case elevation03
        case elevation04
        case elevation05
        case elevation06
        case elevation07
        case elevation08
        case elevation09
        case elevation10

        var rawValue: KeyPath<Elevations, ElevationAttributes> {
            let keyPath: KeyPath<Elevations, ElevationAttributes>

            switch self {
            case .elevation01: keyPath = \.elevation01
            case .elevation02: keyPath = \.elevation02
            case .elevation03: keyPath = \.elevation03
            case .elevation04: keyPath = \.elevation04
            case .elevation05: keyPath = \.elevation05
            case .elevation06: keyPath = \.elevation06
            case .elevation07: keyPath = \.elevation07
            case .elevation08: keyPath = \.elevation08
            case .elevation09: keyPath = \.elevation09
            case .elevation10: keyPath = \.elevation10
            }

            return keyPath
        }
    }
}
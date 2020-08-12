/***
 *
 *  ███╗   ██╗ █████╗ ████████╗██████╗ ███████╗   ████████╗██╗  ██╗███████╗███╗   ███╗███████╗███████╗
 *  ████╗  ██║██╔══██╗╚══██╔══╝██╔══██╗██╔════╝   ╚══██╔══╝██║  ██║██╔════╝████╗ ████║██╔════╝██╔════╝
 *  ██╔██╗ ██║███████║   ██║   ██║  ██║███████╗█████╗██║   ███████║█████╗  ██╔████╔██║█████╗  ███████╗
 *  ██║╚██╗██║██╔══██║   ██║   ██║  ██║╚════██║╚════╝██║   ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝  ╚════██║
 *  ██║ ╚████║██║  ██║   ██║   ██████╔╝███████║      ██║   ██║  ██║███████╗██║ ╚═╝ ██║███████╗███████║
 *  ╚═╝  ╚═══╝╚═╝  ╚═╝   ╚═╝   ╚═════╝ ╚══════╝      ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝╚══════╝
 *
 *  https://github.com/natura-cosmeticos/natds-commons/tree/master/packages/natds-themes
 *
 *  Generated by natds-themes in Thu Jul 23 2020
 *  Do not edit this file.
 *
 *  If you have any trouble or a feature request, open an issue:
 *  https://github.com/natura-cosmeticos/natds-commons/issues
 *
 */

struct TheBodyShopDarkTheme: ThemeProtocol {
    let tokens: TokensProtocol
    let components: ComponentsProtocol
}

struct TheBodyShopDarkTokens: TokensProtocol {
    let borderRadiusNone: CGFloat = 0
    let borderRadiusSmall: CGFloat = 2
    let borderRadiusMedium: CGFloat = 4
    let borderRadiusLarge: CGFloat = 8
    let colorPrimary = "#62B3AE"
    let colorOnPrimary = "#000000"
    let colorPrimaryLight = "#94E5E0"
    let colorOnPrimaryLight = "#000000"
    let colorPrimaryDark = "#2F837F"
    let colorOnPrimaryDark = "#000000"
    let colorSecondary = "#D2AD93"
    let colorOnSecondary = "#000000"
    let colorSecondaryLight = "#FFDFC4"
    let colorOnSecondaryLight = "#000000"
    let colorSecondaryDark = "#A07E65"
    let colorOnSecondaryDark = "#000000"
    let colorBackground = "#121212"
    let colorOnBackground = "#FFFFFF"
    let colorSurface = "#333333"
    let colorOnSurface = "#FFFFFF"
    let colorHighlight = "#FFFFFF"
    let colorHighEmphasis = "#FAFAFA"
    let colorMediumEmphasis = "#BBBBBB"
    let colorLowEmphasis = "#777777"
    let colorLink = "#227BBD"
    let colorOnLink = "#FFFFFF"
    let colorSuccess = "#569A32"
    let colorOnSuccess = "#FFFFFF"
    let colorWarning = "#FCC433"
    let colorOnWarning = "#333333"
    let colorAlert = "#E74627"
    let colorOnAlert = "#FFFFFF"
    let sizeNone: CGFloat = 0
    let sizeMicro: CGFloat = 4
    let sizeTiny: CGFloat = 8
    let sizeSmall: CGFloat = 16
    let sizeStandard: CGFloat = 24
    let sizeSemi: CGFloat = 32
    let sizeSemiX: CGFloat = 40
    let sizeMedium: CGFloat = 48
    let sizeMediumX: CGFloat = 56
    let sizeLarge: CGFloat = 64
    let sizeLargeX: CGFloat = 72
    let sizeLargeXx: CGFloat = 80
    let sizeLargeXxx: CGFloat = 88
    let sizeHuge: CGFloat = 96
    let sizeHugeX: CGFloat = 128
    let sizeHugeXx: CGFloat = 144
    let sizeHugeXxx: CGFloat = 192
    let sizeVeryHuge: CGFloat = 256
    let spacingNone: CGFloat = 0
    let spacingMicro: CGFloat = 4
    let spacingTiny: CGFloat = 8
    let spacingSmall: CGFloat = 16
    let spacingStandard: CGFloat = 24
    let spacingSemi: CGFloat = 32
    let spacingLarge: CGFloat = 48
    let spacingXLarge: CGFloat = 64
    let typographyFontFamilyPrimary = "San Francisco"
    let typographyFontFamilySecondary = "sans-serif"
    let typographyFontFamilyBranding = "Helvetica Now"
    let typographyLineHeightReset: CGFloat = 1
    let typographyLineHeightSmall: CGFloat = 1.25
    let typographyLineHeightMedium: CGFloat = 1.5
    let typographyLineHeightLarge: CGFloat = 2
    let typographyFontWeightRegular: UIFont.Weight = .regular
    let typographyFontWeightMedium: UIFont.Weight = .medium
}

struct TheBodyShopDarkComponents: ComponentsProtocol {
    let buttonDefaultFontSize: CGFloat = 14
    let buttonDefaultFontWeight: UIFont.Weight = .medium
    let buttonDefaultLetterSpacing: CGFloat = 0.44
    let buttonDefaultLineHeight: CGFloat = 1.5
    let heading1FontSize: CGFloat = 96
    let heading1FontWeight: UIFont.Weight = .regular
    let heading1LetterSpacing: CGFloat = 0
    let heading2FontSize: CGFloat = 60
    let heading2FontWeight: UIFont.Weight = .regular
    let heading2LetterSpacing: CGFloat = 0
    let heading3FontSize: CGFloat = 48
    let heading3FontWeight: UIFont.Weight = .regular
    let heading3LetterSpacing: CGFloat = 0
    let heading4FontSize: CGFloat = 34
    let heading4FontWeight: UIFont.Weight = .regular
    let heading4LetterSpacing: CGFloat = 0.08
    let heading5FontSize: CGFloat = 24
    let heading5FontWeight: UIFont.Weight = .regular
    let heading5LetterSpacing: CGFloat = 0
    let heading6FontSize: CGFloat = 20
    let heading6FontWeight: UIFont.Weight = .medium
    let heading6LetterSpacing: CGFloat = 0.12
    let subtitle1FontSize: CGFloat = 16
    let subtitle1FontWeight: UIFont.Weight = .medium
    let subtitle1LetterSpacing: CGFloat = 0.08
    let subtitle2FontSize: CGFloat = 14
    let subtitle2FontWeight: UIFont.Weight = .medium
    let subtitle2LetterSpacing: CGFloat = 0.08
    let body1FontSize: CGFloat = 16
    let body1FontWeight: UIFont.Weight = .regular
    let body1LetterSpacing: CGFloat = 0.32
    let body2FontSize: CGFloat = 14
    let body2FontWeight: UIFont.Weight = .regular
    let body2LetterSpacing: CGFloat = 0.16
    let captionFontSize: CGFloat = 12
    let captionFontWeight: UIFont.Weight = .regular
    let captionLetterSpacing: CGFloat = 0.16
    let overlineFontSize: CGFloat = 12
    let overlineFontWeight: UIFont.Weight = .medium
    let overlineLetterSpacing: CGFloat = 0.8
}

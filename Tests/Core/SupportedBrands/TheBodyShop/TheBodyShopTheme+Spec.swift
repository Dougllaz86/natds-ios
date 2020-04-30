import Quick
import Nimble

@testable import NatDS

final class TheBodyShopThemeSpec: QuickSpec {
    override func spec() {
        let systemUnderTest = TheBodyShopTheme()

        describe("#lightColorPalette") {
            it("returns a instance of TheBodyShopColorPaletteLight") {
                let colorPalette = systemUnderTest.lightColorPalette

                expect(colorPalette).to(beAnInstanceOf(TheBodyShopColorPaletteLight.self))
            }
        }

        describe("#darkColorPalette") {
            it("returns a instance of TheBodyShopColorPaletteDark") {
                let colorPalette = systemUnderTest.darkColorPalette

                expect(colorPalette).to(beAnInstanceOf(TheBodyShopColorPaletteDark.self))
            }
        }

        describe("#spacing") {
            it("returns a instance of TheBodyShopSpacing") {
                let colorPalette = systemUnderTest.spacing

                expect(colorPalette).to(beAnInstanceOf(TheBodyShopSpacing.self))
            }
        }
    }
}

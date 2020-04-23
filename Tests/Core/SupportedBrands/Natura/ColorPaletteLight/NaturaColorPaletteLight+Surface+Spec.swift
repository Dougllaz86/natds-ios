import Quick
import Nimble

@testable import NatDS

final class NaturaColorPaletteLightSurfaceSpec: QuickSpec {
    override func spec() {
        let systemUnderTest = NaturaColorPaletteLight.Surface()

        describe("#background") {
            it("returns a string of a color hex expected for background color") {
                let colorHex = systemUnderTest.background
                let expectedHex = "#FAFAFA"

                expect(colorHex == expectedHex).to(beTrue())
            }
        }

        describe("#onBackground") {
            it("returns a string of a color hex expected for onBackground color") {
                let colorHex = systemUnderTest.onBackground
                let expectedHex = "#333333"

                expect(colorHex == expectedHex).to(beTrue())
            }
        }

        describe("#surface") {
            it("returns a string of a color hex expected for surface color") {
                let colorHex = systemUnderTest.surface
                let expectedHex = "#FFFFFF"

                expect(colorHex == expectedHex).to(beTrue())
            }
        }

        describe("#onSurface") {
            it("returns a string of a color hex expected for onSurface color") {
                let colorHex = systemUnderTest.onSurface
                let expectedHex = "#333333"

                expect(colorHex == expectedHex).to(beTrue())
            }
        }
    }
}

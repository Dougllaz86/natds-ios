import Quick
import Nimble

@testable import NatDS

final class AvonColorPaletteDarkPrimarySpec: QuickSpec {
    override func spec() {
        let systemUnderTest = AvonColorPaletteDark.Primary()

        describe("#primary") {
            it("returns a string of expected hex color") {
                let colorHex = systemUnderTest.primary
                let expectedHex = "#F091C9"

                expect(colorHex == expectedHex).to(beTrue())
            }
        }

        describe("#onPrimary") {
            it("returns a string of expected hex color") {
                let colorHex = systemUnderTest.onPrimary
                let expectedHex = "#000000"

                expect(colorHex == expectedHex).to(beTrue())
            }
        }

        describe("#primaryLight") {
            it("returns a string of expected hex color") {
                let colorHex = systemUnderTest.primaryLight
                let expectedHex = "#FFC3FC"

                expect(colorHex == expectedHex).to(beTrue())
            }
        }

        describe("#onPrimaryLight") {
            it("returns a string of expected hex color") {
                let colorHex = systemUnderTest.onPrimaryLight
                let expectedHex = "#000000"

                expect(colorHex == expectedHex).to(beTrue())
            }
        }

        describe("#primaryDark") {
            it("returns a string of expected hex color") {
                let colorHex = systemUnderTest.primaryDark
                let expectedHex = "#BC6198"

                expect(colorHex == expectedHex).to(beTrue())
            }
        }

        describe("#onPrimaryDark") {
            it("returns a string of expected hex color") {
                let colorHex = systemUnderTest.onPrimaryDark
                let expectedHex = "#000000"

                expect(colorHex == expectedHex).to(beTrue())
            }
        }
    }
}
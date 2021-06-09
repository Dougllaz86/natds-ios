import Quick
import Nimble

@testable import NatDS

final class AvonLightComponentsLogoSpec: QuickSpec {
    override func spec() {
        context("when theme is AvonLight") {
            beforeEach {
                ConfigurationStorage.shared.currentTheme = AvonLightTheme()
            }

            describe("#customA") {
                it("returns a expected path") {
                    let systemUnderTest = getTokenFromTheme(\.assetBrandCustomA)

                    expect(systemUnderTest).to(equal("avon-a-custom"))
                }
            }

            describe("#customB") {
                it("returns a expected path") {
                    let systemUnderTest = getTokenFromTheme(\.assetBrandCustomB)

                    expect(systemUnderTest).to(equal("avon-a-custom"))
                }
            }
            
            describe("#neutralA") {
                it("returns a expected path") {
                    let systemUnderTest = getTokenFromTheme(\.assetBrandNeutralA)

                    expect(systemUnderTest).to(equal("avon-a-official"))
                }
            }
            
            describe("#neutralB") {
                it("returns a expected path") {
                    let systemUnderTest = getTokenFromTheme(\.assetBrandNeutralB)

                    expect(systemUnderTest).to(equal("avon-a-official"))
                }
            }
        }
    }
}

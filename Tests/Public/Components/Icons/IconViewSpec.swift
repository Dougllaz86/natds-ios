import Quick
import Nimble

@testable import NatDS

final class IconViewSpec: QuickSpec {
    override func spec() {
        var sut: IconView!

        beforeEach {
            ConfigurationStorage.shared.currentTheme = StubThemeProtocol()
        }

        describe("#init(fontSize: icon:)") {
            beforeEach {
                sut = IconView(fontSize: 25, icon: Icon.filledActionAdd)
            }

            it("sets expected icon") {
                expect(sut.icon).to(equal(Icon.filledActionAdd))
            }
        }
    }
}
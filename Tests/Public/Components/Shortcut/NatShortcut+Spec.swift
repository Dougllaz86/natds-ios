import Quick
import Nimble

@testable import NatDS

final class NatShortSpec: QuickSpec {
    override func spec() {
        var systemUnderTest: NatShortcut!

        var applyStyleInvocations: Int!

        var styleSpy: NatShortcut.Style!

        beforeEach {
            DesignSystem().configure(with: .theBodyShop)

            applyStyleInvocations = 0

            styleSpy = NatShortcut.Style(
                applyStyle: { _ in applyStyleInvocations += 1 }
            )

            systemUnderTest = NatShortcut(style: styleSpy)
        }

        describe("#init") {
            it("applies style only once") {
                expect(applyStyleInvocations).to(equal(1))
            }

            it("sets a default icon") {
                let circleView = systemUnderTest.subviews.first
                let iconView = circleView?.subviews.first as? IconView

                expect(iconView?.icon).to(equal(.outlinedDefaultMockup))
            }
        }

        describe("#configure(text:)") {
            beforeEach {
                systemUnderTest.configure(text: "stub text")
            }

            it("sets text to label") {
                let label = systemUnderTest.subviews.last as? UILabel

                expect(label?.text).to(equal("stub text"))
            }
        }

        describe("#configure(icon:)") {
            beforeEach {
                systemUnderTest.configure(icon: .filledActionAdd)
            }

            it("sets icon to iconView") {
                let circleView = systemUnderTest.subviews.first
                let iconView = circleView?.subviews.first as? IconView

                expect(iconView?.icon).to(equal(.filledActionAdd))
            }
        }

        describe("#configure(circleColor:)") {
            beforeEach {
                systemUnderTest.configure(circleColor: .red)
            }

            it("sets background color to circleView") {
                let circleView = systemUnderTest.subviews.first

                expect(circleView?.backgroundColor).to(equal(.red))
            }
        }

        describe("#configure(circleBorderWidth:)") {
            beforeEach {
                systemUnderTest.configure(circleBorderWidth: 2.5)
            }

            it("sets border width to circleView") {
                let circleView = systemUnderTest.subviews.first

                expect(circleView?.layer.borderWidth).to(equal(2.5))
            }
        }

        describe("#configure(circleBorderColor:)") {
            beforeEach {
                systemUnderTest.configure(circleBorderColor: UIColor.red.cgColor)
            }

            it("sets boder color to circleView") {
                let circleView = systemUnderTest.subviews.first

                expect(circleView?.layer.borderColor).to(equal(UIColor.red.cgColor))
            }
        }

        describe("#configure(iconColor:)") {
            beforeEach {
                systemUnderTest.configure(iconColor: UIColor.red)
            }

            it("sets tintColor to iconView") {
                let circleView = systemUnderTest.subviews.first
                let iconView = circleView?.subviews.first as? IconView

                expect(iconView?.tintColor).to(equal(.red))
            }
        }

        describe("#touchesBegan") {
            beforeEach {
                systemUnderTest.touchesBegan(.init(arrayLiteral: .init()), with: nil)
            }

            it("calls beginPulseAt and sublayer for animation is add") {
                let circleView = systemUnderTest.subviews.first

                expect(circleView?.layer.sublayers?.count).to(equal(2))
            }
        }

        describe("#touchesEnded") {
            beforeEach {
                systemUnderTest.touchesBegan(.init(arrayLiteral: .init()), with: nil)
                systemUnderTest.touchesEnded(.init(), with: nil)
            }

            it("calls endPulse and sublayer is removed after animation ends") {
                let circleView = systemUnderTest.subviews.first

                expect(circleView?.layer.sublayers?.count).toEventually(equal(1))
            }
        }

        describe("#traitCollectionDidChange") {
            beforeEach {
                systemUnderTest.traitCollectionDidChange(nil)
            }

            it("applies style again besides init") {
                expect(applyStyleInvocations).to(equal(2))
            }
        }
    }
}

import Quick
import Nimble

@testable import NatDS

final class DesignSystemSpec: QuickSpec {
    override func spec() {
        context("when using default storage") {
            let systemUnderTest = DesignSystem()

            describe("#configure") {
                context("when the brand is .avon") {
                    beforeEach {
                        systemUnderTest.configure(with: .avon)
                    }

                    it("sets current theme to Avon") {
                        let theme = getTheme()

                        expect(theme).to(beAnInstanceOf(AvonTheme.self))
                    }
                }

                context("when the brand is .natura") {
                    beforeEach {
                        systemUnderTest.configure(with: .natura)
                    }

                    it("sets current theme to Natura") {
                        let theme = getTheme()

                        expect(theme).to(beAnInstanceOf(NaturaTheme.self))
                    }
                }

                context("when the brand is .theBodyShop") {
                    beforeEach {
                        systemUnderTest.configure(with: .theBodyShop)
                    }

                    it("sets current theme to The Body Shop") {
                        let theme = getTheme()

                        expect(theme).to(beAnInstanceOf(TheBodyShopTheme.self))
                    }
                }

                describe("#currentBrand") {
                    context("when the brand is .avon") {
                        beforeEach {
                            systemUnderTest.configure(with: .avon)
                        }

                        it("returns current brand as Avon") {
                            let brand = systemUnderTest.currentBrand

                            expect(brand).to(equal(.avon))
                        }
                    }

                    context("when the brand is .natura") {
                        beforeEach {
                            systemUnderTest.configure(with: .natura)
                        }

                        it("returns current brand as Natura") {
                            let brand = systemUnderTest.currentBrand

                            expect(brand).to(equal(.natura))
                        }
                    }

                    context("when the brand is .theBodyShop") {
                        beforeEach {
                            systemUnderTest.configure(with: .theBodyShop)
                        }

                        it("returns current brand as The Body Shop") {
                            let brand = systemUnderTest.currentBrand

                            expect(brand).to(equal(.theBodyShop))
                        }
                    }
                }
            }
        } // context - When using default storage

        context("when using mock storage to analyze behavior") {
            var mockStorage: MockStorage!
            var systemUnderTest: DesignSystem!

            describe("#configure") {
                beforeEach {
                    mockStorage = MockStorage()
                    systemUnderTest = DesignSystem(storage: mockStorage)
                }

                context("when the brand is .avon") {
                    it("calls storage.save only once") {
                        systemUnderTest.configure(with: .avon)
                        expect(mockStorage.saveInvocations).to(equal(1))
                    }
                }

                context("when the brand is .natura") {
                    it("calls storage.save only once") {
                        systemUnderTest.configure(with: .natura)

                        expect(mockStorage.saveInvocations).to(equal(1))
                    }
                }
                context("when the brand is .theBodyShop") {
                    it("calls storage.save only once") {
                        systemUnderTest.configure(with: .theBodyShop)

                        expect(mockStorage.saveInvocations).to(equal(1))
                    }
                }
            }

            describe("#currentBrand") {
                context("when the brand is not configured") {
                    beforeEach {
                        mockStorage = MockStorage()
                        systemUnderTest = DesignSystem(storage: mockStorage)
                    }

                    it("returns nil") {
                        let brand = systemUnderTest.currentBrand

                        expect(brand).to(beNil())
                    }
                }

                context("when the brand is .avon") {
                    beforeEach {
                        mockStorage = MockStorage()
                        systemUnderTest = DesignSystem(storage: mockStorage)
                        systemUnderTest.configure(with: .avon)
                    }

                    it("returns current brand as Avon") {
                        let brand = systemUnderTest.currentBrand

                        expect(brand).to(equal(.avon))
                    }
                }

                context("when the brand is .natura") {
                    beforeEach {
                        mockStorage = MockStorage()
                        systemUnderTest = DesignSystem(storage: mockStorage)
                        systemUnderTest.configure(with: .natura)
                    }

                    it("returns current brand as Natura") {
                        let brand = systemUnderTest.currentBrand

                        expect(brand).to(equal(.natura))
                    }
                }

                context("when the brand is .theBodyShop") {
                    beforeEach {
                        mockStorage = MockStorage()
                        systemUnderTest = DesignSystem(storage: mockStorage)
                        systemUnderTest.configure(with: .theBodyShop)
                    }

                    it("returns current brand as The Body Shop") {
                        let brand = systemUnderTest.currentBrand

                        expect(brand).to(equal(.theBodyShop))
                    }
                }
            }
        } // context - when using custom mock storage to analyze behavior
    }
}

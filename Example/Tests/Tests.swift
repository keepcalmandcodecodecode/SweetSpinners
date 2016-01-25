// https://github.com/Quick/Quick

import Quick
import Nimble
import SweetSpinners

class SweetSpinnerSpec: QuickSpec {
    override func spec() {
        var viewForSpinner:UIView!
        beforeEach{
            viewForSpinner = UIView()
        }
        describe("Spinner is show and hides"){
            it("view has SweetSpinner in view's hierarchy"){
                let spinner = SweetSpinner.show(viewForSpinner)
                expect(spinner.superview == viewForSpinner)
            }
            it("SweetSpinner removed from view's hierarchy"){
                let spinner = SweetSpinner.show(viewForSpinner)
                SweetSpinner.hide(viewForSpinner)
                let subviews = viewForSpinner.subviews
                expect(subviews).toNot(contain(spinner))
            }
        }
    }
}

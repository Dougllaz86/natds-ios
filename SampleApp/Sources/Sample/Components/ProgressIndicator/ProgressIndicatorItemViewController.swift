import NatDS
import UIKit

class ProgressIndicatorItemViewController: UIViewController, SampleItem {
    static var name = "Progress Indicator"
    private let progressIndicator = ProgressIndicatorCircular()
    private let progressIndicatorSmall = ProgressIndicatorCircular()
    private let progressIndicatorMedium = ProgressIndicatorCircular()

    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = NatSpacing.tiny
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = Self.name
        view.backgroundColor = .white
        addProgressIndicator()
        progressIndicator.configure()
        progressIndicatorSmall.configure()
        progressIndicatorMedium.configure()
    }

    private func addProgressIndicator() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(progressIndicatorSmall)
        stackView.addArrangedSubview(progressIndicator)
        stackView.addArrangedSubview( progressIndicatorMedium)

        progressIndicator.translatesAutoresizingMaskIntoConstraints = false
        progressIndicatorSmall.translatesAutoresizingMaskIntoConstraints = false
        progressIndicatorMedium.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            progressIndicatorSmall.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            progressIndicatorSmall.centerYAnchor.constraint(equalTo: stackView.centerYAnchor),
            progressIndicatorSmall.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 100),

            progressIndicator.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            progressIndicator.centerYAnchor.constraint(equalTo: stackView.centerYAnchor),
            progressIndicator.topAnchor.constraint(equalTo: progressIndicatorSmall.topAnchor, constant: 100),

            progressIndicatorMedium.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            progressIndicatorMedium.centerYAnchor.constraint(equalTo: stackView.centerYAnchor),
            progressIndicatorMedium.topAnchor.constraint(equalTo: progressIndicator.topAnchor, constant: 100)
        ])
    }
}

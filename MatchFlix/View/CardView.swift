//
//  CardView.swift
//  MatchFlix
//
//  Created by Marc Delagrammatikas on 3/8/21.
//

import UIKit

class CardView: UIView {
    private let gradientLayer = CAGradientLayer()

    private let imageView: UIImageView = {
        let image = UIImageView()

        image.contentMode = .scaleAspectFill
        image.image = #imageLiteral(resourceName: "jane1")

        return image
    }()

    private let infoLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2

        let attributedText = NSMutableAttributedString(string: "Jane Doe", attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy), .foregroundColor: UIColor.white])

        attributedText.append(NSAttributedString(string: "  20", attributes: [.font: UIFont.systemFont(ofSize: 24), .foregroundColor: UIColor.white]))

        label.attributedText = attributedText

        return label
    }()

    private lazy var infoButton: UIButton = {
        let button = UIButton(type: .system)

        button.setImage(#imageLiteral(resourceName: "info_icon").withRenderingMode(.alwaysOriginal), for: .normal)

        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .systemPurple
        layer.cornerRadius = 10
        clipsToBounds = true

        configureGestureRecognizers()

        addSubview(imageView)
        imageView.fillSuperview()

        configureGradientLayer()

        addSubview(infoLabel)
        infoLabel.anchor(left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingLeft: 16, paddingBottom: 16, paddingRight: 16)

        addSubview(infoButton)
        infoButton.setDimensions(height: 40, width: 40)
        infoButton.centerY(inView: infoLabel)
        infoButton.anchor(right: rightAnchor, paddingRight: 16)
    }

    override func layoutSubviews() {
        gradientLayer.frame = self.frame
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func handlePanGesture(sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: nil)

        switch sender.state {
        case .began:
             break
        case .changed:
            let degrees: CGFloat = translation.x / 20
            let angle = degrees * .pi / 180
            let rotationalTransform = CGAffineTransform(rotationAngle: angle)
            self.transform = rotationalTransform.translatedBy(x: translation.x, y: translation.y)
        case .ended:
            break
        @unknown default:
            break
        }
    }

    @objc func handleChangePhoto(sender: UITapGestureRecognizer) {

    }

    func configureGradientLayer() {
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.locations = [0.5, 1.1]
        layer.addSublayer(gradientLayer)
    }

    func configureGestureRecognizers() {
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture))
        addGestureRecognizer(pan)

        let tap = UITapGestureRecognizer(target: self, action: #selector(handleChangePhoto))
        addGestureRecognizer(tap)
    }
}

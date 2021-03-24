//
//  CardView.swift
//  MatchFlix
//
//  Created by Marc Delagrammatikas on 3/8/21.
//

import UIKit

class CardView: UIView {
    private let imageView: UIImageView = {
        let iv = UIImageView()

        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "kelly2")

        return iv
    }()

    private let infoLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2

        let attributedText = NSMutableAttributedString(string: "Jane Doe", attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy), .foregroundColor: UIColor.white])

        attributedText.append(NSAttributedString(string: "  20", attributes: [.font: UIFont.systemFont(ofSize: 24), .foregroundColor: UIColor.white]))

        label.attributedText = attributedText

        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .systemPurple
        layer.cornerRadius = 10
        clipsToBounds = true

        addSubview(imageView)
        addSubview(infoLabel)

        imageView.fillSuperview()
        infoLabel.anchor(left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingLeft: 16, paddingBottom: 16, paddingRight: 16)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

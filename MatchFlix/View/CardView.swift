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

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .systemPurple
        layer.cornerRadius = 10
        clipsToBounds = true

        addSubview(imageView)
        imageView.fillSuperview()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

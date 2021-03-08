//
//  HomeNavigationStackView.swift
//  MatchFlix
//
//  Created by Marc Delagrammatikas on 3/6/21.
//

import UIKit

class HomeNavigationStackView: UIStackView {
    let settingsButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let logoIcon = UIImageView(image: #imageLiteral(resourceName: "app_icon"))

    override init(frame: CGRect) {
        super.init(frame: frame)

        settingsButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "top_right_messages").withRenderingMode(.alwaysOriginal), for: .normal)

        [settingsButton, UIView(), logoIcon, UIView(), messageButton].forEach{ view in addArrangedSubview(view) }

        distribution = .equalCentering
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

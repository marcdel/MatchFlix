//
//  HomeController.swift
//  MatchFlix
//
//  Created by Marc Delagrammatikas on 3/6/21.
//

import UIKit

class HomeController: UIViewController {
    private let topStack = HomeNavigationStackView()
    private let bottomStack = BottomControlsStackView()

    private let deckView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 5
        return view
    }()

    fileprivate func configureUI() {
        view.backgroundColor = .white

        let stack = UIStackView(arrangedSubviews: [topStack, deckView, bottomStack])
        stack.axis = .vertical

        view.addSubview(stack)
        stack.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor)

        stack.isLayoutMarginsRelativeArrangement = true
        stack.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
        stack.bringSubviewToFront(deckView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
}

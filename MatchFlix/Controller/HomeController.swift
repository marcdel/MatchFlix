//
//  HomeController.swift
//  MatchFlix
//
//  Created by Marc Delagrammatikas on 3/6/21.
//

import UIKit

class HomeController: UIViewController {
    private let topStack = HomeNavigationStackView()

    fileprivate func configureUI() {
        view.backgroundColor = .white
        view.addSubview(topStack)
        topStack.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
}

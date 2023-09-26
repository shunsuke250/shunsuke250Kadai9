//
//  ViewController.swift
//  PrefecturesModalApp23-09-24
//
//  Created by 副山俊輔 on 2023/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var selectedPrefectureLabel: UILabel!
    @IBOutlet private weak var selectButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapSelectButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let selectViewController = storyboard.instantiateViewController(withIdentifier: "SelectViewController") as? SelectViewController {
            selectViewController.modalPresentationStyle = .fullScreen
            self.present(selectViewController, animated: true, completion: nil)
        }
//        let vc = SelectViewController()
//        let nav = UINavigationController(rootViewController: vc)
//        nav.modalPresentationStyle = .fullScreen
//        present(nav, animated: true, completion: nil)
    }
}


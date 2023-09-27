//
//  SelectViewController.swift
//  PrefecturesModalApp23-09-24
//
//  Created by 副山俊輔 on 2023/09/26.
//

import UIKit

class SelectViewController: UIViewController {

    @IBOutlet private weak var tokyoButton: UIButton!
    @IBOutlet private weak var kanagawaButton: UIButton!
    @IBOutlet private weak var saitamaButton: UIButton!
    @IBOutlet private weak var chibaButton: UIButton!

    var selectedPrefecture: String?

    @IBAction func didTapTokyoButton(_ sender: Any) {
        selectedPrefecture = "東京都"
        updateSelectedPrefectureLabel()
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapKanagawaButton(_ sender: Any) {
        selectedPrefecture = "神奈川県"
        updateSelectedPrefectureLabel()
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapSaitamaButton(_ sender: Any) {
        selectedPrefecture = "埼玉県"
        updateSelectedPrefectureLabel()
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapChibaButton(_ sender: Any) {
        selectedPrefecture = "千葉県"
        updateSelectedPrefectureLabel()
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapCancelButton(_ sender: Any) {
        updateSelectedPrefectureLabel()
        self.dismiss(animated: true, completion: nil)
    }

    func updateSelectedPrefectureLabel() {
        if let selectedPrefecture = selectedPrefecture, let viewController = presentingViewController as? ViewController {
            viewController.selectedPrefectureLabel.text = selectedPrefecture
        }
    }
}

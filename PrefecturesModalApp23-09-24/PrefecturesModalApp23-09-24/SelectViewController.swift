//
//  SelectViewController.swift
//  PrefecturesModalApp23-09-24
//
//  Created by 副山俊輔 on 2023/09/26.
//

import UIKit

protocol SelectViewControllerDelegate: AnyObject {
    func didSelectPrefecture(_ selectedPrefecture: String)
}

class SelectViewController: UIViewController {

    @IBOutlet private weak var tokyoButton: UIButton!
    @IBOutlet private weak var kanagawaButton: UIButton!
    @IBOutlet private weak var saitamaButton: UIButton!
    @IBOutlet private weak var chibaButton: UIButton!

    var selectedPrefecture = ""
    weak var delegate: SelectViewControllerDelegate?

    @IBAction func didTapTokyoButton(_ sender: Any) {
        selectedPrefecture = "東京都"
        delegate?.didSelectPrefecture(selectedPrefecture)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapKanagawaButton(_ sender: Any) {
        selectedPrefecture = "神奈川県"
        delegate?.didSelectPrefecture(selectedPrefecture)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapSaitamaButton(_ sender: Any) {
        selectedPrefecture = "埼玉県"
        delegate?.didSelectPrefecture(selectedPrefecture)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapChibaButton(_ sender: Any) {
        selectedPrefecture = "千葉県"
        delegate?.didSelectPrefecture(selectedPrefecture)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapCancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

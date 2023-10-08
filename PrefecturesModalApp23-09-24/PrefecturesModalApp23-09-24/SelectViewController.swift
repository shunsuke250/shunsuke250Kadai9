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
    weak var delegate: SelectViewControllerDelegate?

    @IBAction func didTapTokyoButton(_ sender: Any) {
        delegate?.didSelectPrefecture("東京都")
        dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapKanagawaButton(_ sender: Any) {
        delegate?.didSelectPrefecture("神奈川県")
        dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapSaitamaButton(_ sender: Any) {
        delegate?.didSelectPrefecture("埼玉県")
        dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapChibaButton(_ sender: Any) {
        delegate?.didSelectPrefecture("千葉県")
        dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

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
    
    // ViewController内で選択された都道府県を保持するプロパティ
    var selectedPrefecture = ""

    @IBAction func didTapSelectButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let selectViewController = storyboard.instantiateViewController(withIdentifier: "SelectViewController") as? SelectViewController {
            selectViewController.delegate = self
            selectViewController.modalPresentationStyle = .fullScreen
            self.present(selectViewController, animated: true, completion: nil)
        }
    }
}

extension ViewController: SelectViewControllerDelegate {
    func didSelectPrefecture(_ selectedPrefecture: String) {
        self.selectedPrefecture = selectedPrefecture
        selectedPrefectureLabel.text = selectedPrefecture
    }
}

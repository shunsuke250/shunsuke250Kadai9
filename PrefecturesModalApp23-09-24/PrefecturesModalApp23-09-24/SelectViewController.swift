//
//  SelectViewController.swift
//  PrefecturesModalApp23-09-24
//
//  Created by 副山俊輔 on 2023/09/26.
//

import UIKit

class SelectViewController: UIViewController {

    @IBOutlet weak var tokyoButton: UIButton!
    @IBOutlet weak var kanagawaButton: UIButton!
    @IBOutlet weak var saitamaButton: UIButton!
    @IBOutlet weak var chibaButton: UIButton!

    @IBAction func didTapTokyoButton(_ sender: Any) {
    }
    
    @IBAction func didTapKanagawaButton(_ sender: Any) {
    }
    
    @IBAction func didTapSaitamaButton(_ sender: Any) {
    }
    
    @IBAction func didTapChibaButton(_ sender: Any) {
    }

    @IBAction func didTapCancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

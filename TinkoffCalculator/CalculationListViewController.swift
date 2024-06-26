//
//  CalculationListViewController.swift
//  TinkoffCalculator
//
//  Created by Vedishev on 25.04.2024.
//

import UIKit

class CalculationListViewController: UIViewController {
    
    var result: String?
    @IBOutlet weak var calculationLabel: UILabel!
    
    
    
    override init (nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?){
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        initialize()
    }
    
    required init? (coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }
    
    @IBAction func dismissVs(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    private func initialize() {
        modalPresentationStyle = .fullScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculationLabel.text = result
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
}

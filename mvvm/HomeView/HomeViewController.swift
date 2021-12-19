//
//  HomeViewController.swift
//  mvvm
//
//  Created by mohsen on 18/12/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var WelcomeLbl: UILabel!
    private let viewModel = homeViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinders()
        viewModel.getlogInUser()
        // Do any additional setup after loading the view.
    }
    
    func setupBinders(){
        viewModel.welcomeMessage.bind { [weak self] message in
            self?.WelcomeLbl.text = message
        }
    }
    

 

}

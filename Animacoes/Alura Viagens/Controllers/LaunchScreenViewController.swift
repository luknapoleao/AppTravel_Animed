//
//  LaunchScreenViewController.swift
//  App Viagens
//
//  Created by Lucas Napoleão 10/04/23.
//  Copyright © 2023 Napoleão All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var constraintTituloTop: NSLayoutConstraint!
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iniciaAnimacao()
    }
    
    // MARK: - Metodos
    
    func iniciaAnimacao() {
        constraintTituloTop.constant = 280
        UIView.animate(withDuration: 1.0, animations: {
            self.view.layoutIfNeeded()
        }) { (_ ) in
            self.irParaHome()
        }
    }
    
    func irParaHome() {
        let tabBar = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tab-bar")
        let navigation = UINavigationController(rootViewController: tabBar)
        navigation.setNavigationBarHidden(true, animated: false)
        present(navigation, animated: true, completion: nil)
    }
}

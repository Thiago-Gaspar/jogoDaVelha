//
//  ViewController.swift
//  jogoDaVelha
//
//  Created by Thiago Gaspar on 17/04/21.
//


import UIKit

class LoginVC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var loginView : LoginView!
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView = LoginView(view: view, parent: self)
        
        //------------------------------ Targets --------------------------//
        
        loginView.loginButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
    
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        
    }

    @objc func loginAction() {
        
        let vc = UINavigationController(rootViewController: HomeVC())
        
        self.modalPresentationStyle = .fullScreen
        
        self.present(vc, animated: true, completion: nil)

    }

    
}









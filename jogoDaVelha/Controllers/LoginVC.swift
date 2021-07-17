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
        
        //--------------------- Changing navigation Bar infos --------------------------------
        
        self.navigationController?.navigationBar.isHidden = true
   
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.navigationBar.isHidden = true

    }

    @objc func loginAction() {
        
        let vc = HomeVC()

        self.modalPresentationStyle = .fullScreen
        
        self.present(vc, animated: true, completion: nil)

    }

    
}

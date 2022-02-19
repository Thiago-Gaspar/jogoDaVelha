//
//  ViewController.swift
//  jogoDaVelha
//
//  Created by Thiago Gaspar on 17/04/21.
//

import UIKit
import GoogleSignIn
import FirebaseAuth
import FirebaseCore

class LoginVC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var loginView : LoginView!
    
    var googleButton : GIDSignInButton!
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView = LoginView(view: view, parent: self)
        
        googleButton = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: view.frame.width*0.7, height: 50))
        googleButton.frame.origin.y = loginView.loginButton.frame.origin.y + loginView.loginButton.frame.height + 20
        googleButton.center.x = view.frame.width/2
        googleButton.addTarget(self, action: #selector(setupGoogle), for: .touchUpInside)
        
        view.addSubview(googleButton)
        
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
    
    @objc func setupGoogle() {
        
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(with: config, presenting: self) { [unowned self] user, error in

          if let error = error {
            // ...
            return
          }

          guard
            let authentication = user?.authentication,
            let idToken = authentication.idToken
          else {
            return
          }

          let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                         accessToken: authentication.accessToken)

          // ...
            
            Auth.auth().signIn(with: credential) { authResult, error in
                if let error = error {
                    let authError = error as NSError
                    if authError.code == AuthErrorCode.secondFactorRequired.rawValue {
                        // The user is a multi-factor user. Second factor challenge is required.
                        let resolver = authError
                            .userInfo[AuthErrorUserInfoMultiFactorResolverKey] as! MultiFactorResolver
                        var displayNameString = ""
                        for tmpFactorInfo in resolver.hints {
                            displayNameString += tmpFactorInfo.displayName ?? ""
                            displayNameString += " "
                        }
                        GenericAlert.genericAlert(self, title: "DEU RUIM!", message: "", actions: [])
                    } else {
                        GenericAlert.genericAlert(self, title: "\(error.localizedDescription)", message: "", actions: [])
                        return
                    }
                    // ...
                    return
                }
                print("DEU BOM!")
            }
            
        }
        
    }
    
    @objc func loginAction() {
        
//        if self.loginView.emailTextField.text == nil || self.loginView.emailTextField.text!.isEmpty {
//
//            GenericAlert.genericAlert(self, title: "Favor preencher o campo de email", message: "", actions: [])
//            
//            return
//
//        }
//
//        if self.loginView.passwordTextField.text == nil || self.loginView.passwordTextField.text!.isEmpty {
//
//            GenericAlert.genericAlert(self, title: "Favor preencher o campo de senha", message: "", actions: [])
//
//            return
//
//        }
        
        self.startLoading()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            
            self.stopLoading()
            
            let vc = HomeVC()
            
            vc.modalPresentationStyle = .fullScreen
            
            self.present(vc, animated: true, completion: nil)
            
        }
     
    }
    
}

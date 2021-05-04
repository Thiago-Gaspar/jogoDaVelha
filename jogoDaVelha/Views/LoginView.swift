//
//  LoginView.swift
//  jogoDaVelha
//
//  Created by Thiago Gaspar on 17/04/21.
//



import UIKit

class LoginView: UIView {
    
    /* ********************************************************************************
     **
     **  MARK: Variables Declaration
     **
     **********************************************************************************/
        
    var logoImageView : UIImageView!
    
    var hashtagLabel : UILabel!
    
    var emailTextField : UITextField!
    
    var passwordTextField : UITextField!
    
    var uiSwitch : UISwitch!
    
    var stayLoggedLabel : UILabel!
    
    var loginButton : UIButton!
    
    /* ******************************************************************************
     **
     **  MARK: Init
     **
     ********************************************************************************/
    
    init(view: UIView, parent: UIViewController) {
        super.init(frame: view.frame);
        
        view.backgroundColor = .white
        
        let width = view.frame.size.width
        let height = view.frame.size.height
       
        var yPosition = height*0.1
        
        //------------------------- Logo Image Label -----------------------------

        logoImageView = UIImageView(frame: CGRect(x: 0, y: yPosition, width: 100, height: 120))
        logoImageView.image = UIImage(named: "mocLogo")
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.center.x = width/2
        
        view.addSubview(logoImageView)
        
        yPosition = yPosition + logoImageView.frame.height + 20
        
        //------------------------- Hashtag Label -----------------------------
        
        hashtagLabel = UILabel(frame: CGRect(x: 0, y: yPosition, width: width*0.5, height: 50))
        hashtagLabel.text = "Jogo da Velha"
        hashtagLabel.textColor = .black
        hashtagLabel.font = UIFont.boldSystemFont(ofSize: 30)
        hashtagLabel.center.x = width/2
        
        view.addSubview(hashtagLabel)
        
        yPosition = yPosition + hashtagLabel.frame.height + 20
        
        //------------------------- Email Text Field -----------------------------

        emailTextField = UITextField(frame: CGRect(x: 0, y: yPosition, width: width*0.9, height: 40))
        emailTextField.backgroundColor = .lightGray
        emailTextField.textColor = .black
        emailTextField.font = UIFont.defaultFont(size: 18, type: .regular)
        emailTextField.layer.cornerRadius = emailTextField.frame.height/2
        emailTextField.center.x = width/2
        emailTextField.autocapitalizationType = .none
        emailTextField.autocorrectionType = .no
        emailTextField.keyboardType = .emailAddress
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: emailTextField.frame.height))
        emailTextField.leftViewMode = UITextField.ViewMode.always
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Email".localized,attributes:[NSAttributedString.Key.foregroundColor:UIColor.black])
        
        view.addSubview(emailTextField)
        
        yPosition = yPosition + emailTextField.frame.height + 15
        
        //------------------------- Password Text Field -----------------------------

        passwordTextField = UITextField(frame: CGRect(x: 0, y: yPosition, width: width*0.9, height: 40))
        passwordTextField.backgroundColor = .lightGray
        passwordTextField.textColor = .black
        passwordTextField.font = UIFont.defaultFont(size: 18, type: .regular)
        passwordTextField.layer.cornerRadius = passwordTextField.frame.height/2
        passwordTextField.center.x = width/2
        passwordTextField.autocapitalizationType = .none
        passwordTextField.autocorrectionType = .no
        passwordTextField.keyboardType = .default
        passwordTextField.isSecureTextEntry = true
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: passwordTextField.frame.height))
        passwordTextField.leftViewMode = UITextField.ViewMode.always
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password".localized,attributes:[NSAttributedString.Key.foregroundColor:UIColor.black])
        
        view.addSubview(passwordTextField)
  
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




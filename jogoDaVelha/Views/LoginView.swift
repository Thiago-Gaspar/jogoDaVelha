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
    
    var emailLabel : UILabel!
    
    var emailTextField : UITextField!
    
    var passwordLabel : UILabel!
    
    var passwordTextField : UITextField!
        
    var stayLoggedSwitch : UISwitch!
    
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
        
        //------------------------- Logo Image View -----------------------------

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
        hashtagLabel.font = UIFont.defaultFont(size: 28, type: .bold)
        hashtagLabel.center.x = width/2
        
        view.addSubview(hashtagLabel)
        
        yPosition = yPosition + hashtagLabel.frame.height + 20
        
        //------------------------- Email Label -----------------------------
        
        emailLabel = UILabel(frame: CGRect(x: width*0.05, y: yPosition, width: 0, height: 0))
        emailLabel.text = "email"
        emailLabel.textColor = .blue
        emailLabel.font = UIFont.defaultFont(size: 14, type: .regular)
        emailLabel.sizeToFit()
        
        view.addSubview(emailLabel)
        
        yPosition = yPosition + emailLabel.frame.height + 5
        
        //------------------------- Email Text Field -----------------------------

        emailTextField = UITextField(frame: CGRect(x: 0, y: yPosition, width: width*0.9, height: 50))
        emailTextField.backgroundColor = .gray
        emailTextField.textColor = .black
        emailTextField.font = UIFont.defaultFont(size: 16, type: .regular)
        emailTextField.layer.cornerRadius = 12
        emailTextField.center.x = width/2
        emailTextField.autocapitalizationType = .none
        emailTextField.autocorrectionType = .no
        emailTextField.keyboardType = .emailAddress
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: emailTextField.frame.height))
        emailTextField.leftViewMode = UITextField.ViewMode.always
        
        view.addSubview(emailTextField)
        
        yPosition = yPosition + emailTextField.frame.height + 15
        
        //------------------------- Password Label -----------------------------
        
        passwordLabel = UILabel(frame: CGRect(x: width*0.05, y: yPosition, width: 0, height: 0))
        passwordLabel.text = "senha"
        passwordLabel.textColor = .blue
        passwordLabel.font = UIFont.defaultFont(size: 14, type: .regular)
        passwordLabel.sizeToFit()
        
        view.addSubview(passwordLabel)
        
        yPosition = yPosition + passwordLabel.frame.height + 5
        
        //------------------------- Password Text Field -----------------------------

        passwordTextField = UITextField(frame: CGRect(x: 0, y: yPosition, width: width*0.9, height: 50))
        passwordTextField.backgroundColor = .gray
        passwordTextField.textColor = .black
        passwordTextField.font = UIFont.defaultFont(size: 18, type: .regular)
        passwordTextField.layer.cornerRadius = 12
        passwordTextField.center.x = width/2
        passwordTextField.autocapitalizationType = .none
        passwordTextField.autocorrectionType = .no
        passwordTextField.keyboardType = .default
        passwordTextField.isSecureTextEntry = true
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: passwordTextField.frame.height))
        passwordTextField.leftViewMode = UITextField.ViewMode.always
        
        view.addSubview(passwordTextField)
        
        yPosition = yPosition + passwordTextField.frame.height + 15
  
        //------------------------- Ui Switch -----------------------------

        stayLoggedSwitch = UISwitch(frame: CGRect(x: 0, y: yPosition, width: 30, height: 20))
        stayLoggedSwitch.backgroundColor = .clear
        stayLoggedSwitch.isOn = true
        stayLoggedSwitch.frame.origin.x = passwordTextField.frame.origin.x
        
        view.addSubview(stayLoggedSwitch)
        
        //------------------------- Stay Logged Label -----------------------------

        stayLoggedLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        stayLoggedLabel.text = "manter conectado"
        stayLoggedLabel.textColor = .black
        stayLoggedLabel.font = UIFont.defaultFont(size: 14, type: .regular)
        stayLoggedLabel.sizeToFit()
        stayLoggedLabel.center.y = stayLoggedSwitch.center.y
        stayLoggedLabel.frame.origin.x = stayLoggedSwitch.frame.origin.x + stayLoggedSwitch.frame.width + 10
        
        yPosition = yPosition + stayLoggedLabel.frame.height + 50
        
        view.addSubview(stayLoggedLabel)
        
        //------------------------- Login Button -----------------------------

        loginButton = UIButton(frame: CGRect(x: 0, y: yPosition, width: width*0.6, height: 50))
        loginButton.setTitle("Entrar", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.titleLabel?.font = UIFont.defaultFont(size: 18, type: .bold)
        loginButton.backgroundColor = .blue
        loginButton.layer.cornerRadius = loginButton.frame.height/2
        loginButton.center.x = width/2
        
        view.addSubview(loginButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




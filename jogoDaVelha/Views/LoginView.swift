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
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




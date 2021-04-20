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
    
    var scrollView : UIScrollView!
    
    var logoImageView : UIButton!
    
    /* ******************************************************************************
     **
     **  MARK: Init
     **
     ********************************************************************************/
    
    init(view: UIView, parent: UIViewController) {
        super.init(frame: view.frame);
        
        view.backgroundColor = .systemPink
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        var yPosition = height*0.1
        
        //------------------------- Scroll View -----------------------------
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = .white
        
        view.addSubview(scrollView)
        
        //------------------------- Logo Image Label -----------------------------

        logoImageView = UIButton(frame: CGRect(x: 0, y: height*0.1, width: width*0.3, height: 60))
        logoImageView.backgroundColor = .green
        logoImageView.layer.cornerRadius = logoImageView.frame.height/2
        logoImageView.center.x = width/2
        
        scrollView.addSubview(logoImageView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




//
//  StartView.swift
//  jogoDaVelha
//
//  Created by Thiago Gaspar on 15/06/21.


import UIKit

class StartView: UIView {
    
    /* ********************************************************************************
     **
     **  MARK: Variables Declaration
     **
     **********************************************************************************/
        
    var logoImageView : UIImageView!
    
    /* ******************************************************************************
     **
     **  MARK: Init
     **
     ********************************************************************************/
    
    init(view: UIView, parent: UIViewController) {
        super.init(frame: view.frame);
        
        view.backgroundColor = .white
               
        //------------------------- Logo Image Label -----------------------------

        logoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        logoImageView.image = UIImage(named: "mocLogo")
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.center = view.center
        
        view.addSubview(logoImageView)
                
     
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




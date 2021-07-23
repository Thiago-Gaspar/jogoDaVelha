//
//  HomeView.swift
//  jogoDaVelha
//
//  Created by Thiago Gaspar on 15/05/21.
//


import UIKit

class HomeView: UIView {
    
    /* ********************************************************************************
     **
     **  MARK: Variables Declaration
     **
     **********************************************************************************/

    var ballImageView : UIImageView!
    
    var playImageView : UIImageView!

    var playLabel : UILabel!
    
    var crossImageView : UIImageView!
    
    var leftVerticalLineView : UIView!
    
    var rightVerticalLineView : UIView!
    
    var topHorizontalLineView : UIView!
    
    var bottomHorizontalLineView : UIView!
    
    var firstGameView : UIView!
    
    var secondGameView : UIView!
    
    var thirdGameView : UIView!

    var fourthGameView : UIView!

    var fifthGameView : UIView!

    var sixthGameView : UIView!

    var seventhGameView : UIView!

    var eightGameView : UIView!

    var nineGameView : UIView!

    
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
               
        //-------------------------  -----------------------------
    
       
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}





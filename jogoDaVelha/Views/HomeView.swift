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
        
    var scrollView : UIScrollView!
    
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
        
        //------------------------- Scroll View -----------------------------
              
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        scrollView.backgroundColor = .white
        scrollView.isScrollEnabled = false
        scrollView.contentInsetAdjustmentBehavior = .never
        
        view.addSubview(scrollView)
       
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




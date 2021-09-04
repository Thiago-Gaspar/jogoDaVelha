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
    
    var screenView : UIView!
    
    var firstGameView : UIView!
    
    var secondGameView : UIView!
    
    var thirdGameView : UIView!
    
    var fourthGameView : UIView!
    
    var fifthGameView : UIView!
    
    var sixthGameView : UIView!
    
    var seventhGameView : UIView!
    
    var eightGameView : UIView!
    
    var nineGameView : UIView!
    
    var firstHorizontalLineView : UIView!
    
    var secondHorizontalLineView : UIView!
    
    var firstVerticalLineView : UIView!
    
    var secondVerticalLineView : UIView!
  
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
        
        
        //------------------------- Screen View -----------------------------

        screenView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.85, height: width*0.75 + 40))
        screenView.center.y = view.center.y
        screenView.center.x = width/2
        
        view.addSubview(screenView)
        
        //------------------------- First Game View -----------------------------
        
        firstGameView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.25, height: width*0.25))
        firstGameView.backgroundColor = UIColor.white
        
        screenView.addSubview(firstGameView)
        
        //------------------------- Second Game View -----------------------------
        
        secondGameView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.25, height: width*0.25))
        secondGameView.backgroundColor = UIColor.white
        secondGameView.frame.origin.x = firstGameView.frame.origin.x + firstGameView.frame.width + width*0.05
        
        screenView.addSubview(secondGameView)
        
        //------------------------- Third Game View -----------------------------
        
        thirdGameView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.25, height: width*0.25))
        thirdGameView.backgroundColor = UIColor.white
        thirdGameView.frame.origin.x = secondGameView.frame.origin.x + secondGameView.frame.width + width*0.05
        
        screenView.addSubview(thirdGameView)
        
        var yPosition = thirdGameView.frame.height + 20
        
        //------------------------- Fourth Game View -----------------------------
        
        fourthGameView = UIView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        fourthGameView.backgroundColor = UIColor.white
        
        screenView.addSubview(fourthGameView)
        
        //------------------------- Fifth Game View -----------------------------
        
        fifthGameView = UIView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        fifthGameView.backgroundColor = UIColor.white
        fifthGameView.frame.origin.x = fourthGameView.frame.origin.x + fourthGameView.frame.width + width*0.05
        
        screenView.addSubview(fifthGameView)
        
        //------------------------- Sixth Game View -----------------------------
        
        sixthGameView = UIView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        sixthGameView.backgroundColor = UIColor.white
        sixthGameView.frame.origin.x = fifthGameView.frame.origin.x + fifthGameView.frame.width + width*0.05
        
        screenView.addSubview(sixthGameView)
        
        yPosition = yPosition + sixthGameView.frame.height + 20
        
        //------------------------- Seventh Game View -----------------------------
        
        seventhGameView = UIView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        seventhGameView.backgroundColor = UIColor.white
        
        screenView.addSubview(seventhGameView)
        
        //------------------------- Eight Game View -----------------------------
        
        eightGameView = UIView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        eightGameView.backgroundColor = UIColor.white
        eightGameView.frame.origin.x = seventhGameView.frame.origin.x + seventhGameView.frame.width + width*0.05
        
        screenView.addSubview(eightGameView)
        
        //------------------------- Nine Game View -----------------------------
        
        nineGameView = UIView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        nineGameView.backgroundColor = UIColor.white
        nineGameView.frame.origin.x = eightGameView.frame.origin.x + eightGameView.frame.width + width*0.05
        
        screenView.addSubview(nineGameView)
        
        //------------------------- First Horizontal Line View -----------------------------

        firstHorizontalLineView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.85, height: 20))
        firstHorizontalLineView.backgroundColor = .black
        firstHorizontalLineView.frame.origin.y = firstGameView.frame.origin.y + firstGameView.frame.height
        
        screenView.addSubview(firstHorizontalLineView)
                
        //------------------------- Second Horizontal Line View -----------------------------

        secondHorizontalLineView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.85, height: 20))
        secondHorizontalLineView.backgroundColor = .black
        secondHorizontalLineView.frame.origin.y = fourthGameView.frame.origin.y + fourthGameView.frame.height
        
        screenView.addSubview(secondHorizontalLineView)
        
        //------------------------- First Vertical Line View -----------------------------

        firstVerticalLineView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.05, height: screenView.frame.height))
        firstVerticalLineView.backgroundColor = .black
        firstVerticalLineView.frame.origin.x = firstGameView.frame.origin.x + firstGameView.frame.width
        
        screenView.addSubview(firstVerticalLineView)
        
        //------------------------- Second Vertical Line View -----------------------------

        secondVerticalLineView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.05, height: screenView.frame.height))
        secondVerticalLineView.backgroundColor = .black
        secondVerticalLineView.frame.origin.x = secondGameView.frame.origin.x + secondGameView.frame.width
        
        screenView.addSubview(secondVerticalLineView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}





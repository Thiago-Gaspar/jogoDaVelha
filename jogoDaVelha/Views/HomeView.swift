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
    
    var hashtagLabel : UILabel!
    
    var screenView : UIView!
    
    var firstGameImageView : UIImageView!
    
    var secondGameImageView : UIImageView!
    
    var thirdGameImageView : UIImageView!
    
    var fourthGameImageView : UIImageView!
    
    var fifthGameImageView : UIImageView!
    
    var sixthGameImageView : UIImageView!
    
    var seventhGameImageView : UIImageView!
    
    var eightGameImageView : UIImageView!
    
    var nineGameImageView : UIImageView!
    
    var firstHorizontalLineView : UIView!
    
    var secondHorizontalLineView : UIView!
    
    var firstVerticalLineView : UIView!
    
    var secondVerticalLineView : UIView!
    
    var resetButton : UIButton!
  
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
        
        
        //------------------------- Hashtag -----------------------------

        hashtagLabel = UILabel(frame: CGRect(x: 0, y: height*0.1, width: width, height: height*0.15))
        hashtagLabel.text = "Jogo da Velha".localized
        hashtagLabel.textColor = .black
        hashtagLabel.textAlignment = .center
        hashtagLabel.font = UIFont.defaultFont(size: 40, type: .bold)
        hashtagLabel.center.x = width/2
        
        view.addSubview(hashtagLabel)
        
        //------------------------- Screen View -----------------------------

        screenView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.85, height: width*0.75 + 40))
        screenView.center.y = view.center.y
        screenView.center.x = width/2
        
        view.addSubview(screenView)
        
        //------------------------- First Game View -----------------------------
        
        firstGameImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width*0.25, height: width*0.25))
        firstGameImageView.backgroundColor = UIColor.white
        firstGameImageView.isUserInteractionEnabled = true
        
        screenView.addSubview(firstGameImageView)
        
        //------------------------- Second Game View -----------------------------
        
        secondGameImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width*0.25, height: width*0.25))
        secondGameImageView.backgroundColor = UIColor.white
        secondGameImageView.frame.origin.x = firstGameImageView.frame.origin.x + firstGameImageView.frame.width + width*0.05
        secondGameImageView.isUserInteractionEnabled = true
        
        screenView.addSubview(secondGameImageView)
        
        //------------------------- Third Game View -----------------------------
        
        thirdGameImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width*0.25, height: width*0.25))
        thirdGameImageView.backgroundColor = UIColor.white
        thirdGameImageView.frame.origin.x = secondGameImageView.frame.origin.x + secondGameImageView.frame.width + width*0.05
        thirdGameImageView.isUserInteractionEnabled = true
        
        screenView.addSubview(thirdGameImageView)
        
        var yPosition = thirdGameImageView.frame.height + 20
        
        //------------------------- Fourth Game View -----------------------------
        
        fourthGameImageView = UIImageView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        fourthGameImageView.backgroundColor = UIColor.white
        fourthGameImageView.isUserInteractionEnabled = true
        
        screenView.addSubview(fourthGameImageView)
        
        //------------------------- Fifth Game View -----------------------------
        
        fifthGameImageView = UIImageView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        fifthGameImageView.backgroundColor = UIColor.white
        fifthGameImageView.frame.origin.x = fourthGameImageView.frame.origin.x + fourthGameImageView.frame.width + width*0.05
        fifthGameImageView.isUserInteractionEnabled = true
        
        screenView.addSubview(fifthGameImageView)
        
        //------------------------- Sixth Game View -----------------------------
        
        sixthGameImageView = UIImageView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        sixthGameImageView.backgroundColor = UIColor.white
        sixthGameImageView.frame.origin.x = fifthGameImageView.frame.origin.x + fifthGameImageView.frame.width + width*0.05
        sixthGameImageView.isUserInteractionEnabled = true
        
        screenView.addSubview(sixthGameImageView)
        
        yPosition = yPosition + sixthGameImageView.frame.height + 20
        
        //------------------------- Seventh Game View -----------------------------
        
        seventhGameImageView = UIImageView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        seventhGameImageView.backgroundColor = UIColor.white
        seventhGameImageView.isUserInteractionEnabled = true
        
        screenView.addSubview(seventhGameImageView)
        
        //------------------------- Eight Game View -----------------------------
        
        eightGameImageView = UIImageView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        eightGameImageView.backgroundColor = UIColor.white
        eightGameImageView.frame.origin.x = seventhGameImageView.frame.origin.x + seventhGameImageView.frame.width + width*0.05
        eightGameImageView.isUserInteractionEnabled = true
        
        screenView.addSubview(eightGameImageView)
        
        //------------------------- Nine Game View -----------------------------
        
        nineGameImageView = UIImageView(frame: CGRect(x: 0, y: yPosition, width: width*0.25, height: width*0.25))
        nineGameImageView.backgroundColor = UIColor.white
        nineGameImageView.frame.origin.x = eightGameImageView.frame.origin.x + eightGameImageView.frame.width + width*0.05
        nineGameImageView.isUserInteractionEnabled = true
        
        screenView.addSubview(nineGameImageView)
        
        //------------------------- First Horizontal Line View -----------------------------

        firstHorizontalLineView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.85, height: 20))
        firstHorizontalLineView.backgroundColor = .black
        firstHorizontalLineView.frame.origin.y = firstGameImageView.frame.origin.y + firstGameImageView.frame.height
        
        screenView.addSubview(firstHorizontalLineView)
                
        //------------------------- Second Horizontal Line View -----------------------------

        secondHorizontalLineView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.85, height: 20))
        secondHorizontalLineView.backgroundColor = .black
        secondHorizontalLineView.frame.origin.y = fourthGameImageView.frame.origin.y + fourthGameImageView.frame.height
        
        screenView.addSubview(secondHorizontalLineView)
        
        //------------------------- First Vertical Line View -----------------------------

        firstVerticalLineView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.05, height: screenView.frame.height))
        firstVerticalLineView.backgroundColor = .black
        firstVerticalLineView.frame.origin.x = firstGameImageView.frame.origin.x + firstGameImageView.frame.width
        
        screenView.addSubview(firstVerticalLineView)
        
        //------------------------- Second Vertical Line View -----------------------------

        secondVerticalLineView = UIView(frame: CGRect(x: 0, y: 0, width: width*0.05, height: screenView.frame.height))
        secondVerticalLineView.backgroundColor = .black
        secondVerticalLineView.frame.origin.x = secondGameImageView.frame.origin.x + secondGameImageView.frame.width
        
        screenView.addSubview(secondVerticalLineView)
        
        //------------------------- Reset Button -----------------------------

        resetButton = UIButton(frame: CGRect(x: 0, y: 0, width: width*0.7, height: 60))
        resetButton.backgroundColor = .black
        resetButton.setTitle("Reiniciar", for: .normal)
        resetButton.setTitleColor(.white, for: .normal)
        resetButton.titleLabel?.font = UIFont.defaultFont(size: 25, type: .bold)
        resetButton.layer.cornerRadius = resetButton.frame.height/2
        resetButton.center.x = width/2
        resetButton.frame.origin.y = height*0.9 - resetButton.frame.height
        
        view.addSubview(resetButton)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}





//
//  StartVC.swift
//  jogoDaVelha
//
//  Created by Thiago Gaspar on 15/06/21.
//


import UIKit

class StartVC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var startView : StartView!
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startView = StartView(view: view, parent: self)
        

}
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            
            let vc = LoginVC()
      
            let moveRight = CATransition()
            
            moveRight.duration = 0.3
            moveRight.type = CATransitionType.moveIn
            moveRight.subtype = CATransitionSubtype.fromRight
            self.view.window!.layer.add(moveRight, forKey: kCATransition)
            
            vc.modalPresentationStyle = .fullScreen
            
            self.present(vc, animated: false, completion: nil)

        
    }
    
    }

}









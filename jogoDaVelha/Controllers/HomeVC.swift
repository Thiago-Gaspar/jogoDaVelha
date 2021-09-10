//
//  HomeVC.swift
//  jogoDaVelha
//
//  Created by Thiago Gaspar on 15/05/21.
//

import UIKit

class HomeVC: UIViewController {
    
    /* **************************************************************************************************
     **
     **  MARK: Variables Declaration
     **
     ****************************************************************************************************/
    
    var homeView : HomeView!
    
    var player1 : Bool = true
    
    /* **************************************************************************************************
     **
     **  MARK: View
     **
     ****************************************************************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView = HomeView(view: view, parent: self)
        
        //------------------------------ Targets --------------------------//
        
        homeView.resetButton.addTarget(self, action: #selector(resetGame), for: .touchUpInside)
    
        let firstTap = UITapGestureRecognizer(target: self, action: #selector(firstViewClicked))
        let secondTap = UITapGestureRecognizer(target: self, action: #selector(secondViewClicked))
        let thirdTap = UITapGestureRecognizer(target: self, action: #selector(thirdViewClicked))
        let fourthTap = UITapGestureRecognizer(target: self, action: #selector(fourthViewClicked))
        let fifthTap = UITapGestureRecognizer(target: self, action: #selector(fifthViewClicked))
        let sixthTap = UITapGestureRecognizer(target: self, action: #selector(sixthViewClicked))
        let seventhTap = UITapGestureRecognizer(target: self, action: #selector(seventhViewClicked))
        let eightTap = UITapGestureRecognizer(target: self, action: #selector(eightViewClicked))
        let nineTap = UITapGestureRecognizer(target: self, action: #selector(nineViewClicked))
        
        homeView.firstGameImageView.addGestureRecognizer(firstTap)
        homeView.secondGameImageView.addGestureRecognizer(secondTap)
        homeView.thirdGameImageView.addGestureRecognizer(thirdTap)
        homeView.fourthGameImageView.addGestureRecognizer(fourthTap)
        homeView.fifthGameImageView.addGestureRecognizer(fifthTap)
        homeView.sixthGameImageView.addGestureRecognizer(sixthTap)
        homeView.seventhGameImageView.addGestureRecognizer(seventhTap)
        homeView.eightGameImageView.addGestureRecognizer(eightTap)
        homeView.nineGameImageView.addGestureRecognizer(nineTap)
        
        //--------------------- Changing navigation Bar infos --------------------------------
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = false
        
        
        //-------------------------------- Navigation Bar ---------------------------------------
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = UIColor.black
                
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        
    }
    
    @objc func resetGame() {
        
        self.homeView.firstGameImageView.image = nil
        self.homeView.secondGameImageView.image = nil
        self.homeView.thirdGameImageView.image = nil
        self.homeView.fourthGameImageView.image = nil
        self.homeView.fifthGameImageView.image = nil
        self.homeView.sixthGameImageView.image = nil
        self.homeView.seventhGameImageView.image = nil
        self.homeView.eightGameImageView.image = nil
        self.homeView.nineGameImageView.image = nil
        
        self.player1 = true

        
    }
    
    @objc func firstViewClicked() {
        
        let aux = self.homeView
        
        if player1 == true {
            
            if aux?.firstGameImageView.image != nil {
                
                return
                
            } else {
                
                if aux?.secondGameImageView.image == UIImage(named: "ball") && aux?.thirdGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.firstGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.fifthGameImageView.image == UIImage(named: "ball") && aux?.nineGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.firstGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.fourthGameImageView.image == UIImage(named: "ball") && aux?.seventhGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.firstGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else {
                    
                    aux?.firstGameImageView.image = UIImage(named: "ball")
                    
                    player1 = false
                    
                }
                
            }
       
        } else if player1 == false {
            
            if aux?.firstGameImageView.image != nil {
                
                return
                
            }
            
            if aux?.secondGameImageView.image == UIImage(named: "close") && aux?.thirdGameImageView.image == UIImage(named: "close") {
                
                aux?.firstGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.fifthGameImageView.image == UIImage(named: "close") && aux?.nineGameImageView.image == UIImage(named: "close") {
                
                aux?.firstGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.fourthGameImageView.image == UIImage(named: "close") && aux?.seventhGameImageView.image == UIImage(named: "close") {
                
                aux?.firstGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else {
                
                aux?.firstGameImageView.image = UIImage(named: "close")
                
                player1 = true
                
            }
        
        }
     
    }
    
    @objc func secondViewClicked() {
        
        let aux = self.homeView
        
        if player1 == true {
            
            if aux?.secondGameImageView.image != nil {
                
                return
                
            } else {
                
                if aux?.firstGameImageView.image == UIImage(named: "ball") && aux?.thirdGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.secondGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.fifthGameImageView.image == UIImage(named: "ball") && aux?.eightGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.secondGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else {
                    
                    aux?.secondGameImageView.image = UIImage(named: "ball")
                    
                    player1 = false
                    
                }
                
            }
       
        } else if player1 == false {
            
            if aux?.secondGameImageView.image != nil {
                
                return
                
            }
            
            if aux?.firstGameImageView.image == UIImage(named: "close") && aux?.thirdGameImageView.image == UIImage(named: "close") {
                
                aux?.secondGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.fifthGameImageView.image == UIImage(named: "close") && aux?.eightGameImageView.image == UIImage(named: "close") {
                
                aux?.secondGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else {
                
                aux?.secondGameImageView.image = UIImage(named: "close")
                
                player1 = true
                
            }
        
        }
     
    }
    
    @objc func thirdViewClicked() {
        
        let aux = self.homeView
        
        if player1 == true {
            
            if aux?.thirdGameImageView.image != nil {
                
                return
                
            } else {
                
                if aux?.firstGameImageView.image == UIImage(named: "ball") && aux?.secondGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.thirdGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.fifthGameImageView.image == UIImage(named: "ball") && aux?.seventhGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.thirdGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.sixthGameImageView.image == UIImage(named: "ball") && aux?.nineGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.thirdGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else {
                    
                    aux?.thirdGameImageView.image = UIImage(named: "ball")
                    
                    player1 = false
                    
                }
                
            }
       
        } else if player1 == false {
            
            if aux?.thirdGameImageView.image != nil {
                
                return
                
            }
            
            if aux?.firstGameImageView.image == UIImage(named: "close") && aux?.secondGameImageView.image == UIImage(named: "close") {
                
                aux?.thirdGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.fifthGameImageView.image == UIImage(named: "close") && aux?.seventhGameImageView.image == UIImage(named: "close") {
                
                aux?.thirdGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.sixthGameImageView.image == UIImage(named: "close") && aux?.nineGameImageView.image == UIImage(named: "close") {
                
                aux?.thirdGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else {
                
                aux?.thirdGameImageView.image = UIImage(named: "close")
                
                player1 = true
                
            }
        
        }
     
    }
    
    @objc func fourthViewClicked() {
        
        let aux = self.homeView
        
        if player1 == true {
            
            if aux?.fourthGameImageView.image != nil {
                
                return
                
            } else {
                
                if aux?.fifthGameImageView.image == UIImage(named: "ball") && aux?.sixthGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.fourthGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.firstGameImageView.image == UIImage(named: "ball") && aux?.seventhGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.fourthGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else {
                    
                    aux?.fourthGameImageView.image = UIImage(named: "ball")
                    
                    player1 = false
                    
                }
                
            }
       
        } else if player1 == false {
            
            if aux?.fourthGameImageView.image != nil {
                
                return
                
            }
            
            if aux?.fifthGameImageView.image == UIImage(named: "close") && aux?.sixthGameImageView.image == UIImage(named: "close") {
                
                aux?.fourthGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.firstGameImageView.image == UIImage(named: "close") && aux?.seventhGameImageView.image == UIImage(named: "close") {
                
                aux?.fourthGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else {
                
                aux?.fourthGameImageView.image = UIImage(named: "close")
                
                player1 = true
                
            }
        
        }
     
    }
    
    @objc func fifthViewClicked() {
        
        let aux = self.homeView
        
        if player1 == true {
            
            if aux?.fifthGameImageView.image != nil {
                
                return
                
            } else {
                
                if aux?.secondGameImageView.image == UIImage(named: "ball") && aux?.eightGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.fifthGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.fourthGameImageView.image == UIImage(named: "ball") && aux?.sixthGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.fifthGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.firstGameImageView.image == UIImage(named: "ball") && aux?.nineGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.fifthGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.thirdGameImageView.image == UIImage(named: "ball") && aux?.seventhGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.fifthGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else {
                    
                    aux?.fifthGameImageView.image = UIImage(named: "ball")
                    
                    player1 = false
                    
                }
                
            }
       
        } else if player1 == false {
            
            if aux?.fifthGameImageView.image != nil {
                
                return
                
            }
            
            if aux?.secondGameImageView.image == UIImage(named: "close") && aux?.eightGameImageView.image == UIImage(named: "close") {
                
                aux?.fifthGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.fourthGameImageView.image == UIImage(named: "close") && aux?.sixthGameImageView.image == UIImage(named: "close") {
                
                aux?.fifthGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.firstGameImageView.image == UIImage(named: "close") && aux?.nineGameImageView.image == UIImage(named: "close") {
                
                aux?.fifthGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.thirdGameImageView.image == UIImage(named: "close") && aux?.seventhGameImageView.image == UIImage(named: "close") {
                
                aux?.fifthGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else {
                
                aux?.fifthGameImageView.image = UIImage(named: "close")
                
                player1 = true
                
            }
        
        }
     
    }
    
    @objc func sixthViewClicked() {
        
        let aux = self.homeView
        
        if player1 == true {
            
            if aux?.sixthGameImageView.image != nil {
                
                return
                
            } else {
                
                if aux?.fourthGameImageView.image == UIImage(named: "ball") && aux?.fifthGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.sixthGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.thirdGameImageView.image == UIImage(named: "ball") && aux?.nineGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.sixthGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else {
                    
                    aux?.sixthGameImageView.image = UIImage(named: "ball")
                    
                    player1 = false
                    
                }
                
            }
       
        } else if player1 == false {
            
            if aux?.sixthGameImageView.image != nil {
                
                return
                
            }
            
            if aux?.fourthGameImageView.image == UIImage(named: "close") && aux?.fifthGameImageView.image == UIImage(named: "close") {
                
                aux?.sixthGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.thirdGameImageView.image == UIImage(named: "close") && aux?.nineGameImageView.image == UIImage(named: "close") {
                
                aux?.sixthGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else {
                
                aux?.sixthGameImageView.image = UIImage(named: "close")
                
                player1 = true
                
            }
        
        }
     
    }
    
    @objc func seventhViewClicked() {
        
        let aux = self.homeView
        
        if player1 == true {
            
            if aux?.seventhGameImageView.image != nil {
                
                return
                
            } else {
                
                if aux?.fifthGameImageView.image == UIImage(named: "ball") && aux?.thirdGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.seventhGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.fourthGameImageView.image == UIImage(named: "ball") && aux?.firstGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.seventhGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.eightGameImageView.image == UIImage(named: "ball") && aux?.nineGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.seventhGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else {
                    
                    aux?.seventhGameImageView.image = UIImage(named: "ball")
                    
                    player1 = false
                    
                }
                
            }
       
        } else if player1 == false {
            
            if aux?.seventhGameImageView.image != nil {
                
                return
                
            }
            
            if aux?.fifthGameImageView.image == UIImage(named: "close") && aux?.thirdGameImageView.image == UIImage(named: "close") {
                
                aux?.seventhGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.fourthGameImageView.image == UIImage(named: "close") && aux?.firstGameImageView.image == UIImage(named: "close") {
                
                aux?.seventhGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.eightGameImageView.image == UIImage(named: "close") && aux?.nineGameImageView.image == UIImage(named: "close") {
                
                aux?.seventhGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else {
                
                aux?.seventhGameImageView.image = UIImage(named: "close")
                
                player1 = true
                
            }
        
        }
     
    }
    
    @objc func eightViewClicked() {
        
        let aux = self.homeView
        
        if player1 == true {
            
            if aux?.eightGameImageView.image != nil {
                
                return
                
            } else {
                
                if aux?.seventhGameImageView.image == UIImage(named: "ball") && aux?.nineGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.eightGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.fifthGameImageView.image == UIImage(named: "ball") && aux?.secondGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.eightGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else {
                    
                    aux?.eightGameImageView.image = UIImage(named: "ball")
                    
                    player1 = false
                    
                }
                
            }
       
        } else if player1 == false {
            
            if aux?.eightGameImageView.image != nil {
                
                return
                
            }
            
            if aux?.seventhGameImageView.image == UIImage(named: "close") && aux?.nineGameImageView.image == UIImage(named: "close") {
                
                aux?.eightGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.fifthGameImageView.image == UIImage(named: "close") && aux?.secondGameImageView.image == UIImage(named: "close") {
                
                aux?.eightGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else {
                
                aux?.eightGameImageView.image = UIImage(named: "close")
                
                player1 = true
                
            }
        
        }
     
    }
    
    @objc func nineViewClicked() {
        
        let aux = self.homeView
        
        if player1 == true {
            
            if aux?.nineGameImageView.image != nil {
                
                return
                
            } else {
                
                if aux?.fifthGameImageView.image == UIImage(named: "ball") && aux?.firstGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.nineGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.eightGameImageView.image == UIImage(named: "ball") && aux?.seventhGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.nineGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else if aux?.sixthGameImageView.image == UIImage(named: "ball") && aux?.thirdGameImageView.image == UIImage(named: "ball") {
                    
                    aux?.nineGameImageView.image = UIImage(named: "ball")
                    
                    let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                        
                        self.resetGame()
                        
                    }
                    GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 1 venceu!", actions: [okAction])
                    
                    print("Player 1 Win!")
                    
                    return
               
                } else {
                    
                    aux?.nineGameImageView.image = UIImage(named: "ball")
                    
                    player1 = false
                    
                }
                
            }
       
        } else if player1 == false {
            
            if aux?.nineGameImageView.image != nil {
                
                return
                
            }
            
            if aux?.fifthGameImageView.image == UIImage(named: "close") && aux?.firstGameImageView.image == UIImage(named: "close") {
                
                aux?.nineGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.eightGameImageView.image == UIImage(named: "close") && aux?.seventhGameImageView.image == UIImage(named: "close") {
                
                aux?.nineGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else if aux?.sixthGameImageView.image == UIImage(named: "close") && aux?.thirdGameImageView.image == UIImage(named: "close") {
                
                aux?.nineGameImageView.image = UIImage(named: "close")
                
                let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
                    
                    self.resetGame()
                    
                }
                GenericAlert.genericAlert(self, title: "Parabéns!", message: "Player 2 venceu!", actions: [okAction])
                
                print("Player 2 Win!")
                
                return
           
            } else {
                
                aux?.nineGameImageView.image = UIImage(named: "close")
                
                player1 = true
                
            }
        
        }
     
    }
    
}









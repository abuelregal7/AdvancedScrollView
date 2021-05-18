//
//  ViewController.swift
//  AdvancedScrollView
//
//  Created by Ahmed on 5/17/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var hieghtOfViewone: NSLayoutConstraint!
    @IBOutlet weak var hieghtofviewtwo: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hieghtofviewtwo.constant = 0
        viewTwo.isHidden = true
        let gesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapped))
        gesture.numberOfTapsRequired = 1
        viewOne?.isUserInteractionEnabled = true
        viewOne?.addGestureRecognizer(gesture)
    }
    
    @objc func didTapped() {
        hieghtofviewtwo.constant = 900
        if viewTwo.isHidden{
            viewTwo.isHidden = false
            hieghtofviewtwo.constant = 900
            
            
            //filterButtonOutlet.isHidden = false
        } else{
            viewTwo.isHidden = true
            hieghtofviewtwo.constant = 0
            
            
        }
    }

}


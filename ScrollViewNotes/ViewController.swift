//
//  ViewController.swift
//  ScrollViewNotes
//
//  Created by MAX WIDHALM on 2/8/23.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView.delegate = self
        scrollView.backgroundColor = UIColor.blue
        
        
    }
    
    @IBAction func vcAction(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    @IBAction func bracketAction(_ sender: UIButton) {
        performSegue(withIdentifier: "bracketSegue", sender: nil)
    }
    
    

}


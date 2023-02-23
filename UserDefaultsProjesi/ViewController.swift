//
//  ViewController.swift
//  UserDefaultsProjesi
//
//  Created by imrahor on 30.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var notTextField: UITextField!
    @IBOutlet weak var zamanTextField: UITextField!
    @IBOutlet weak var notLabel: UILabel!
    @IBOutlet weak var zamanLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let a = UserDefaults.standard.string(forKey: "not") {
            notLabel.text = "Yapılacak İş: \(a)"
        }else {
            notLabel.text = "değer gir"
        }
        
        if let b = UserDefaults.standard.object(forKey: "zaman") as? String {
            zamanLabel.text = "Yapılacak zaman: \(b)"
        }else {
            zamanLabel.text = "olduu"
        }
    }
    
    @IBAction func kaydetTiklandi(_ sender: Any) {
        UserDefaults.standard.set(notTextField.text!, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text!, forKey: "zaman")
        
        
        notLabel.text = "Yapılacak İş:\(notTextField.text!)"
        zamanLabel.text = "Yapılacak Zaman: \(zamanTextField.text!)"
        
    }
    
    @IBAction func silTiklandi(_ sender: Any) {
        let c = UserDefaults.standard.object(forKey: "not")
        let d = UserDefaults.standard.object(forKey: "zaman")
        
        if (c as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            viewDidLoad()
        }

        if (d as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "zaman")
            viewDidLoad()
        }
        
    }
    
}

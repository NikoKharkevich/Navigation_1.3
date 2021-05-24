//
//  UIAlertViewController.swift
//  Navigation
//
//  Created by Nikola Kharkevich on 16.05.2021.
//

import UIKit

class UIAlertViewController: ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let vc = UIAlertController(title: "Ошибка",
                                   message: "Что-то не так",
                                   preferredStyle: .alert)
         
         let okAction =  UIAlertAction(title: "OK", style: .default) {
             _ in
             print("OK")
         }
         let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {
             _ in
             print("cancel")
         }
     
         vc.addAction(okAction)
         vc.addAction(cancelAction)
         
         present(vc, animated: true, completion: nil)
    }
}

//
//  InfoViewController.swift
//  Navigation
//
//  Created by Nikola Kharkevich on 16.05.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Delete post",
                                   message: "Are you sure?",
                                   preferredStyle: .alert)
         

         let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {
             _ in
             print("cancel")
         }
        
        let deleteAction =  UIAlertAction(title: "Delete", style: .default) {
            _ in
            print("Delete")
        }
     
         alert.addAction(deleteAction)
         alert.addAction(cancelAction)
         
         present(alert, animated: true, completion: nil)
    }
}
    


//
//  FeedViewController.swift
//  Navigation
//
//  Created by Nikola Kharkevich on 16.05.2021.
//

import UIKit

struct Post {
    var title: String = "First Title"
}

class FeedViewController: ViewController {
    
    let somePost: Post = Post(title: "Пост")
    
    @IBOutlet weak var somePostButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        somePostButton.setTitle(somePost.title, for: UIControl.State.normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "post" else { return }
        guard let postViewController = segue.destination as? PostViewController else { return }
        postViewController.post = somePost
    }

}






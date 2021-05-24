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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "feed-post" else { return }
        guard let vc = segue.destination as? PostViewController else { return }
        vc.title = somePost.title
    }
    @IBOutlet weak var somePostButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        somePostButton.setTitle(somePost.title, for: UIControl.State.normal)
    }
    
    var somePost = Post()
}






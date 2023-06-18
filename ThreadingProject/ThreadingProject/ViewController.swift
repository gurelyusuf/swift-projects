//
//  ViewController.swift
//  ThreadingProject
//
//  Created by GUREL on 17.06.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    let urlStrings = ["https://images.pexels.com/photos/1229042/pexels-photo-1229042.jpeg?cs=srgb&dl=pexels-arnie-chou-1229042.jpg&fm=jpg","https://cdn.wallpapersafari.com/21/69/EsyMwI.jpeg"]
    
    var data = Data()

    var tracker = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self

        DispatchQueue.global().async {
            self.data = try! Data(contentsOf: URL(string: self.urlStrings[self.tracker])!) // background thread
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: self.data) // main thread
            }
        }
        
        

        let data = try! Data(contentsOf: URL(string: urlStrings[tracker])!)
        
        imageView.image = UIImage(data: data)
        
        self.navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.compose, target: self, action: #selector(changeImage))
        
       
    }
    @objc func changeImage() {
        if tracker == 0 {
            tracker += 1
        } else {
            tracker -= 1
        }
        DispatchQueue.global().async {
            self.data = try! Data(contentsOf: URL(string: self.urlStrings[self.tracker])!) // background thread
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: self.data) // main thread
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell   = UITableViewCell()
        cell.textLabel?.text = "Threading Test"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }

}


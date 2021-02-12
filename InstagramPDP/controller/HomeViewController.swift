//
//  HomeViewController.swift
//  InstagramPDP
//
//  Created by Mahmudov Asrbek Ulug'bek o'g'li on 2/11/21.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet var tableView: UITableView!
    var items: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initViews()
        
    }
    
    // MARK: - Method
    
    func initViews() {
        
        tableView.dataSource = self
        tableView.delegate = self
        
        navigationBar()
        
        items.append(Post(fullname: "Asrbek", user_img: "im_person1", post_img1: "im_post1", post_img2: "im_post2"))
        items.append(Post(fullname: "Malika", user_img: "im_person2", post_img1: "im_post3", post_img2: "im_post4"))
        
    }
    
    func navigationBar() {
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        title = "Instagram"
    }
    
    // MARK: - Action
    
    @objc func leftTapped() {
        
    }
    
    @objc func rightTapped(){
        
    }
    
    // MARK: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.profileImage.image = UIImage(named: item.user_img!)
        cell.fullname.text = item.fullname
        cell.postImage1.image = UIImage(named: item.post_img1!)
        cell.postImage2.image = UIImage(named: item.post_img2!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
}

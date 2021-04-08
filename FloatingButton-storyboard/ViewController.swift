//
//  ViewController.swift
//  FloatingButton-storyboard
//
//  Created by Toshiyana on 2021/04/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var floatingButton: FloatingActionButton!// UIButtonとした場合,pattern2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //floatingButton.createFloatingActionButton()// UIButtonとした場合,pattern2
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
}

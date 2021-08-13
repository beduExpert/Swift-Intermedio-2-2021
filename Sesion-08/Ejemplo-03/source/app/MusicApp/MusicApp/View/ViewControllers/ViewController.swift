//
//  ViewController.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  // TODO: IMPLEMENT WITH PRESENTER
  //Private properties
//  private var items: [String] = ["Hey", "The Look", "The Less I Know The Better"]
//  let cellId = "SongCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = BackGroundColor
    self.tableView.delegate = self
    self.tableView.dataSource = self
    self.tableView.backgroundColor = .clear
    // TODO: IMPLEMENT WITH PRESENTER
    //let nibCell = UINib(nibName: cellId, bundle: nil)
    //self.tableView.register(nibCell, forCellReuseIdentifier: cellId)
    
    //navigation bar
    self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    self.navigationController?.navigationBar.shadowImage = UIImage()
    self.navigationController?.navigationBar.isTranslucent = true
    self.navigationController!.view.backgroundColor = UIColor.clear
    self.navigationController?.navigationBar.backgroundColor = UIColor.clear
  }
  
  func updateTableView() {
    // TODO: IMPLEMENT WITH PRESENTER
  }
  
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return  0 // TODO: IMPLEMENT WITH PRESENTER
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // TODO: IMPLEMENT WITH PRESENTER
//    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as? SongCell else { return UITableViewCell() }
//    cell.name.text = items[indexPath.row]
//    cell.album.text = items[indexPath.row]
    return UITableViewCell()
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let vc = storyboard?.instantiateViewController(withIdentifier: "PlayerViewController") as? PlayerViewController else { return }
    self.navigationController?.pushViewController(vc, animated: true)
    self.tableView.deselectRow(at: indexPath, animated: true)
  }
  
}


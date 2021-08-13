//
//  AlbumViewController.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  let cellId = "AlbumSongTableViewCell"
  private var items: [String] = ["Song 1", "Song 2", "Song 3"]

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = BackGroundColor
    self.tableView.backgroundColor = .clear
    self.tableView.delegate = self
    self.tableView.dataSource = self
    self.tableView.backgroundColor = .clear
    let nibCell = UINib(nibName: cellId, bundle: nil)
    self.tableView.register(nibCell, forCellReuseIdentifier: cellId)
  }
}
extension AlbumViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as? AlbumSongTableViewCell else { return UITableViewCell() }
    cell.name.text = items[indexPath.row]
    return cell
  }
  
  
}

//
//  ViewController.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  private var presenter: Presenter?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = BackGroundColor
    self.tableView.delegate = self
    self.tableView.dataSource = self
    self.tableView.backgroundColor = .clear

    self.presenter = Presenter(view: self)
    guard let nibCell: UINib = presenter?.getCellNib(),
          let id = presenter?.cellId else { return }
    self.tableView.register(nibCell, forCellReuseIdentifier: id)
    
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
    return  presenter?.getNumberOfItems() ?? 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // TODO: IMPLEMENT WITH PRESENTER
    guard let id = presenter?.cellId, let cell = tableView.dequeueReusableCell(withIdentifier: id) as? SongCell else { return UITableViewCell() }
    cell.name.text = presenter?.items[indexPath.row].name
    cell.album.text = presenter?.items[indexPath.row].album
    cell.albumImage.image = presenter?.getAlbumCover(at: indexPath.row)
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let vc = storyboard?.instantiateViewController(withIdentifier: "PlayerViewController") as? PlayerViewController else { return }
    self.navigationController?.pushViewController(vc, animated: true)
    self.tableView.deselectRow(at: indexPath, animated: true)
  }
  
}


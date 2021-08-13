//
//  ViewController.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  //Private properties
  private var items: [Music] = []
  let cellId = "SongCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = BackGroundColor
    self.tableView.delegate = self
    self.tableView.dataSource = self
    self.tableView.backgroundColor = .clear
    let nibCell = UINib(nibName: cellId, bundle: nil)
    self.tableView.register(nibCell, forCellReuseIdentifier: cellId)
    
    //navigation bar
    self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    self.navigationController?.navigationBar.shadowImage = UIImage()
    self.navigationController?.navigationBar.isTranslucent = true
    self.navigationController!.view.backgroundColor = UIColor.clear
    self.navigationController?.navigationBar.backgroundColor = UIColor.clear
    getRequest()
  }
  
  func getRequest() {
    guard let url = URL(string: "https:...") else { return }
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      // ensure there is no error for this HTTP response
      guard error == nil else {
        print ("error: \(error!)")
        return
      }
      // ensure there is data returned from this HTTP response
      guard let data = data else {
        print("No data")
        return
      }
      guard let object = try? JSONDecoder().decode(Music.self, from: data) else {
        print("fail")
        return
      }
      self.items.append(object)
      print("gotten json response dictionary is \n \(object)")
      // update UI using the response here
      DispatchQueue.main.async {
        self.tableView.reloadData()
      }
    }
    
    // execute the HTTP request
    task.resume()
  }
  
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as? SongCell else { return UITableViewCell() }
    cell.name.text = items[indexPath.row].name
    //cell.album.text = items[indexPath.row].number_of_lessons
    let url = URL(string: items[indexPath.row].imageUrl)
    let data = try? Data(contentsOf: url!)
    cell.albumImage.image = UIImage(data: data!)
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let vc = storyboard?.instantiateViewController(withIdentifier: "PlayerViewController") as? PlayerViewController else { return }
    //self.present(vc, animated: true, completion: nil)
    self.navigationController?.pushViewController(vc, animated: true)
    self.tableView.deselectRow(at: indexPath, animated: true)
  }
  
  
}


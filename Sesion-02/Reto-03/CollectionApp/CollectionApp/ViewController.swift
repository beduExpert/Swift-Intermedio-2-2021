//
//  ViewController.swift
//  CollectionApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var collectionView: UICollectionView!
  
  var array = ["First", "Second", "Third", "Fourth", "Fifth"]
  let cellID = "CustomCollectionViewCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.collectionView.delegate = self
    self.collectionView.dataSource = self
    collectionView.register(UINib.init(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellID)
  }
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return array.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! CustomCollectionViewCell
    cell.label.text = array[indexPath.row]
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    print("selected")
    guard let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else { return }
    self.present(vc, animated: true, completion: nil)
  }
}


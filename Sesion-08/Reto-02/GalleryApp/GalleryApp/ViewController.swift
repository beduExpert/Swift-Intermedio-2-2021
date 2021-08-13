//
//  ViewController.swift
//  GalleryApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var collection: UICollectionView!
  var presenter: Presenter?
  let idCell = "ImageCollectionViewCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter = Presenter(view: self)
    collection.delegate = self
    collection.dataSource = self
    collection.register(UINib.init(nibName: idCell, bundle: nil), forCellWithReuseIdentifier: idCell)
    presenter?.download()
  }
  
  func reloadView() {
    DispatchQueue.main.async {
      self.collection.reloadData()
    }
  }
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return presenter?.items.count ?? 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idCell, for: indexPath) as? ImageCollectionViewCell else { return UICollectionViewCell()
    }
    cell.imageView.image = presenter?.items[indexPath.row]
    return cell
  }
}


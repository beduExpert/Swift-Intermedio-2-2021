//
//  AlbumSongTableViewCell.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class AlbumSongTableViewCell: UITableViewCell {
  
  @IBOutlet weak var name: UILabel!
  @IBOutlet weak var album: UILabel!
  @IBOutlet weak var number: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
    name.textColor = .white
    album.textColor = TextGrayColor
    number.textColor = TextGrayColor
    self.backgroundColor = .clear

    // Color selection
    let selectedBackgroundView = UIView()
    selectedBackgroundView.backgroundColor = greenSelectedCell
    self.selectedBackgroundView = selectedBackgroundView
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
}

//
//  PlayerViewController.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {
  
  @IBOutlet weak var albumCover: UIImageView!
  @IBOutlet weak var songName: UILabel!
  @IBOutlet weak var albumName: UILabel!
  @IBOutlet weak var progressBar: UIProgressView!
  @IBOutlet weak var totalSongTime: UILabel!
  @IBOutlet weak var progressSongTime: UILabel!
  @IBOutlet weak var btnPlay: PlayerButton!
  @IBOutlet weak var btnPrev: UIButton!
  @IBOutlet weak var btnNext: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = BackGroundColor
    self.songName.textColor = .white
    self.albumName.textColor = TextGrayColor
    self.totalSongTime.textColor = .white
    self.progressSongTime.textColor = .white
    
    //setup buttons
    btnPlay.setImage(icon: UIImage(named: "Play"))
    btnPlay.secondIcon = UIImage(named: "Pause")
    
    btnPrev.backgroundColor = .clear
    btnNext.backgroundColor = .clear
    
    btnPrev.setImage(UIImage(named: "Previous"), for: .normal)
    btnPrev.setImage(UIImage(named: "Previous"), for: .highlighted)
    
    btnNext.setImage(UIImage(named: "Next"), for: .normal)
    btnNext.setImage(UIImage(named: "Next"), for: .highlighted)
  }
  
  @IBAction func showAlbumView(_ sender: Any) {
    guard let vc = storyboard?.instantiateViewController(withIdentifier: "AlbumViewController")
      as? AlbumViewController else { return }
    //vc.modalPresentationStyle = .fullScreen //.fullScreen or .overFullScreen for transparency
    self.present(vc, animated: true, completion: nil)
  }
  
  @IBAction func playPause(_ sender: Any) {
    btnPlay.performTwoStateSelection()
  }
  
  @IBAction func next(_ sender: Any) {
  }
  
  @IBAction func previous(_ sender: Any) {
  }
  
}

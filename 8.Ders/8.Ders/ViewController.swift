//
//  ViewController.swift
//  8.Ders
//
//  Created by selin eylül bilen on 1/19/21.
//

import UIKit
import AVFoundation
import WebKit

class ViewController: UIViewController {
    
    var soundPlayer: AVAudioPlayer!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func play(_ sender: UIButton) {
        soundPlayer.play()
    }
   
    @IBAction func pause(_ sender: UIButton) {
        soundPlayer.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //for local
        //let path = Bundle.main.path(forResource: "muzik", ofType: "mp3")
        //let url = URL(fileURLWithPath: path!)
        //soundPlayer = try! AVAudioPlayer(contentsOf: url)
        
        //for web
        DispatchQueue.main.async {
            let webString = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"
            let webUrl = URL(string: webString)
            self.soundPlayer = try! AVAudioPlayer(data: Data(contentsOf: webUrl!))
        }
        
        
        //web url to image
        DispatchQueue.main.async {
            let imgStringUrl = "https://www.ncw.co.uk/wp-content/uploads/2020/06/Music-Club.jpg"
            let url = URL(string: imgStringUrl)
            let data = try! Data(contentsOf: url!)
            self.img.alpha = 0
            self.img.image = UIImage(data: data)
            
            UIView.animate(withDuration: 1.0){
                self.img.alpha = 1.0
            }
        }
        
        /*
        //web url to large images
        uzantısı http olan resimleri info.plist e girip info property list e yeni ekleyip
         app transport security settings ekleyip altına + ya basıp allow aritary loads ekleyerek son sıradaki no yu yes olarak değiştiriyoruz.
        let imgStringUrl_2 = "https://images.adsttc.com/media/images/5e1d/02c3/3312/fd58/9c00/06e9/large_jpg/NewHouse_SA_Photo_01.jpg"
        let url_2 = URL(string: imgStringUrl_2)
        let data_2 = try! Data(contentsOf: url_2!)
        img.image = UIImage(data: data_2, scale: 0.1)*/
        
        
        //youtube embeded video show
        DispatchQueue.main.async {
            let embeded = "<!doctype html> <html> <head> <meta charset='utf-8'> <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'> <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'> </head> <body> <div class='embed-responsive embed-responsive-16by9'> <iframe class='embed-responsive-item' src='https://www.youtube.com/embed/2CHXBMwxRWA?rel=0' allowfullscreen></iframe> </div> </body> </html>"
            self.webView.loadHTMLString(embeded, baseURL: nil)
        }
    }
}


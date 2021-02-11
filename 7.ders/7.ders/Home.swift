//
//  Home.swift
//  7.ders
//
//  Created by selin eylül bilen on 1/16/21.
//

import UIKit
import SCLAlertView

class Home: UIViewController {

    @IBAction func fncAlertShow(_ sender: UIButton) {
        SCLAlertView().showInfo("Önemli Uyarı", subTitle: "Lütfen Adınızı Giriniz")
        //Done butonu hem burdan sabit olarak değiştirilebillir
        // SCLAlertView().showInfo("Önemli Uyarı", subTitle: "Lütfen Adınızı Giriniz", closeButtonTitle: "Tamam")
        //ya da sağ tıklayıp jump to definition diyerek o penceredeki done kelimesini
        // kalıcı olarak değiştirebiliriz, ek olarak üstüne
        //NSLocalizedString(key: "Done", comment: "Tamam") yazılabilir
        
        // Gelen uyarının soldan sağa olarak gelmesi için yine jump to definition a gidip
        //open func showInfo'da .topToBottom olan kısmı .leftToRight ile deeğiştirip
        //projeyi tekrar build etmemiz gerekiyor
        
        //SCLAlertView().showWait("Important info", subTitle: "You are great")
        /*SCLAlertView().showTitle(
            "Congratulations", // Title of view
            subTitle: "Operation successfully completed.", timeout: nil,
            completeText: "Done", // Optional button value, default: ""
            style: .success, // Styles - see below.
            colorStyle: 0xA429FF,
            colorTextButton: 0xFFFFFF
        ) */
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Home viewDidLoad Call")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("Home viewDidAppear Call")
    }

}

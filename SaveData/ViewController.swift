//
//  ViewController.swift
//  SaveData
//
//  Created by hoanganh on 4/9/19.
//  Copyright © 2019 hoanganh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtname: UITextField!
    
    @IBOutlet weak var txtphone: UITextField!
    
 var userDefaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // as giống như,,, as! là chắc chắn có giá trị....as? có thể có hoặc không
        // mình muốnn lưu một dữ liệu chỉ được dùng 1 key duy nhất
        let save = userDefaults.object(forKey: "name1")
         let save2 = userDefaults.object(forKey: "phone1")
        // save có thể ép về kiểu String được hay không thì gán bằng playname
        if let playname = save as? String, let playphone = save2 as? String {
                txtname.text = playname
            // hiển thị lên textField
            txtphone.text = playphone
        }
        
    }
    
    @IBAction func ClickDelete(_ sender: Any) {
        userDefaults.removeObject(forKey: "name1")
         userDefaults.removeObject(forKey: "phone1")
        
    }
    
    @IBAction func ClickSave(_ sender: Any) {
        // ấn nút save xong lưu
        userDefaults.set(txtname.text, forKey: "name1")
        userDefaults.set(txtphone.text, forKey: "phone1")
        print(userDefaults.dictionaryRepresentation())
//        let save = userDefaults.object(forKey: "name1")
//        let save2 = userDefaults.object(forKey: "phone1")
//        if let playname = save as? String, let playphone = save2 as? String {
//           txtname.text = playphone
//            txtphone.text = playname
            
        }
    }
    
    
    
    



//
//  ViewController.swift
//  taskapp
//
//  Created by アプリ開発 on 2019/06/01.
//  Copyright © 2019 Masato.achiwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    

        tableView.delegate = self as? UITableViewDelegate
        tableView.dataSource = self as? UITableViewDataSource
        
    }

    // MARK: UITableViewDataSourceプロトコルのメソッド
    // データの数（＝セルの数）を返すメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    // 各セルの内容を返すメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 再利用可能な cell を得る
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
    // MARK: UITableViewDelegateプロトコルのメソッド
    // 各セルを選択した時に実行されるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       performSegue(withIdentifier: "cellSegue",sender: nil) // ←追加する
    
    }
    
    // セルが削除が可能なことを伝えるメソッド
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath)-> UITableViewCell.EditingStyle {
        return .delete
    }
    
    // Delete ボタンが押された時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    }








    
    
    
    


}
    
    
    
    
    
    
    


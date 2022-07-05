//
//  TestVC.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 25.12.2021.
//

import UIKit
// просто учебный файл. можно удалить
class TestVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "Cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TestCell  // кастим до класа ячейки
        if cell == nil {
            cell = TestCell.init(style: .default, reuseIdentifier: identifier) // Создаем кастомную ячейку класа TestCell
        }
        let text = "sometext"
        cell?.label.text = text // .label. это лейбл с класа ячейки
        let cellLabel = cell?.label
        
        cell?.label.frame.size.height = text.getSizeText(width: cellLabel!.frame.width, font: cellLabel!.font!).height // считаем в основном VC
        
        return cell!
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TestCell.height
    }

}

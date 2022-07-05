//
//  QuestionsVC.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 31.12.2021.
//

import UIKit

class QuestionsVC: UITableViewController {
    var heightForCurrentCell: CGFloat = 40

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(CellLabelTFLabel.self, forCellReuseIdentifier: "QuestionsCellForLabelTFLabel")
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "QuestionsCellForLabelTFLabel"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? CellLabelTFLabel
        if cell == nil {
            cell = CellLabelTFLabel.init(style: .default, reuseIdentifier: identifier)
        }
        let text = "test text 2test text 2test text 2test text....... 2test text 2 test text 2test text 2test text 2test text 2test text 2test text 2test text 2test text 2test text 2test text 22"
        let textArray = text.components(separatedBy: " ")
        

        cell?.selectionStyle = .none
        
        
        

        cell?.createLabelOne(string: textArray)
        cell?.createTextField()
        cell?.createLabelTwo(string: textArray)
        heightForCurrentCell = (cell?.heightForCurrentCell())!
        
        
 
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightForCurrentCell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    } QuestionsSeg
    */

}

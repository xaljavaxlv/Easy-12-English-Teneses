//
//  LessonVC.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 28.12.2021.
//

import UIKit

class LessonVC: UITableViewController {
    
    var indexForLesson: Int = 0
    var allPropertiesForLesson = [Any]()
    var sortedContentForLesson = [Any]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = lessonsArray[indexForLesson].lessonName
        
        self.tableView.register(LessonCellForImage.self, forCellReuseIdentifier: "CellForImage")
        self.tableView.register(LessonCellForTitle.self, forCellReuseIdentifier: "CellForTitle")
        self.tableView.register(LessonCellForText.self, forCellReuseIdentifier: "CellForText")
        self.tableView.register(CellForNextStepButton.self, forCellReuseIdentifier: "CellForNextStepButton")
        
        getDataForLesson()

        sortedContentForLesson = allPropertiesForLesson.sorted( by:{
            var left: Int = 0
            var right: Int = 0
            switch $0 {
            case is Images:
                let object = $0 as! Images
                left = object.id
                
            case is Titles:
                let object = $0 as! Titles
                left = object.id
                
            case is Texts:
                let object = $0 as! Texts
                left = object.id
                
            default:
                break
            }
            
            switch $1 {
            case is Images:
                let object = $1 as! Images
                right = object.id
                
            case is Titles:
                let object = $1 as! Titles
                right = object.id
                
            case is Texts:
                let object = $1 as! Texts
                right = object.id
                
            default:
                break
            }
            
            return left < right
            
        })
        
        tableView.separatorColor = UIColor.systemBackground
        
    }
    
    func getDataForLesson() {
        
        // Добавляем в общий массив все значения со словаря картинок
        let imagesArrayForLesson = lessonsArray[indexForLesson].images!
        if imagesArrayForLesson.count > 0 {
            for imageObject in imagesArrayForLesson {
                allPropertiesForLesson.append(imageObject)
            }
            
        }
        
        // Добавляем в общий массив все значения со словаря заголовков
        let titlesArrayForLesson = lessonsArray[indexForLesson].titles!
        if titlesArrayForLesson.count > 0 {
            for titleObject in titlesArrayForLesson {
                allPropertiesForLesson.append(titleObject)
            }
        }
        
        // Добавляем в общий массив все значения со словаря текстов
        let textsArrayForLesson = lessonsArray[indexForLesson].texts!
        if textsArrayForLesson.count > 0 {
            for textObject in textsArrayForLesson {
                allPropertiesForLesson.append(textObject)
            }
        }
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7 //sortedContentForLesson.count + 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        if row == sortedContentForLesson.count {
            return createCellForButton(tableView: tableView, indexPath: indexPath)
        }
        
        else {
            switch sortedContentForLesson[indexPath.row] {
            case is Images:
                return createCellForImage(tableView: tableView, indexPath: indexPath)
            case is Titles:
                return createCellForTitle(tableView: tableView, indexPath: indexPath)
            case is Texts:
                return createCellForText(tableView: tableView, indexPath: indexPath)
            default: return createCellForText(tableView: tableView, indexPath: indexPath)
            }
        }
    }
    
    func createCellForImage(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let identifier = "CellForImage"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? LessonCellForImage
        if cell == nil {
            cell = LessonCellForImage.init(style: .default, reuseIdentifier: identifier)
        }
        
        cell?.selectionStyle = .none
        let nameForImage = sortedContentForLesson[indexPath.row] as! Images
        cell?.image.image = UIImage(named: nameForImage.name)
        
        return cell!
    }
    
    func createCellForTitle(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let identifier = "CellForTitle"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? LessonCellForTitle
        if cell == nil {
            cell = LessonCellForTitle.init(style: .default, reuseIdentifier: identifier)
        }
        
        cell?.selectionStyle = .none
        let titleForContent = sortedContentForLesson[indexPath.row] as! Titles
        let content = String(titleForContent.title)
        cell?.title.text = content
        cell?.title.numberOfLines = 0
        
        return cell!
    }
    
    func createCellForText(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let identifier = "CellForText"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? LessonCellForText
        if cell == nil {
            cell = LessonCellForText.init(style: .default, reuseIdentifier: identifier)
        }
        
        cell?.selectionStyle = .none
        let textForCell = sortedContentForLesson[indexPath.row] as! Texts
        cell?.text.text = textForCell.text
        cell?.text.numberOfLines = 0
        
        return cell!
    }
    
    func createCellForButton(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let identifier = "CellForNextStepButton"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? CellForNextStepButton
        if cell == nil {
            cell = CellForNextStepButton.init(style: .default, reuseIdentifier: identifier)
        }
        
        cell?.selectionStyle = .none
        cell?.button.setTitle("Next", for: .normal)
        cell?.button.layer.cornerRadius = 10
        cell?.button.backgroundColor = .blue
        cell?.button.addTarget(self, action: #selector(buttonGoToQuestionAction), for: .touchUpInside)
        
        return cell!
    }
    
    @objc func buttonGoToQuestionAction() {
        
        let secondViewController: QuestionsVC = QuestionsVC()
        self.show(secondViewController, sender: .none)
        
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == sortedContentForLesson.count {
            return  tableView.rowHeight } //  или UITableViewAutomaticDimension
        else {
            guard sortedContentForLesson[indexPath.row] is Images else { return  tableView.rowHeight }
            let indentForImageView: CGFloat = 20
            let nameForImage = sortedContentForLesson[indexPath.row] as! Images
            let imageForView = UIImage.init(named: nameForImage.name)
            let screenWidth = UIScreen.main.bounds.width
            let imageWidth = screenWidth - indentForImageView * 2
            let imageHeight = imageForView!.size.height / (imageForView!.size.width / imageWidth)
            
            return imageHeight + indentForImageView
        }
    }
    
    
    
}

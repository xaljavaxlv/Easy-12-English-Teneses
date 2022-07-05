//
//  LessonsListModel.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 28.12.2021.
//

import UIKit



class LessonsListModel {
    
    var lessonName: String!
    //var images: [String: Int]?
    var images: [Images]?
    var titles: [Titles]?
    var texts: [Texts]?
    var time: Teneses!
    
    init(lessonName: String, images: [Images], titles: [Titles], texts: [Texts], time: Teneses) {
        self.lessonName = lessonName
        self.images = images
        self.titles = titles
        self.texts = texts
        self.time = time
    }
    
}

class Images {
    var name: String
    var id: Int
    
    init(name: String, id: Int){
        self.name = name
        self.id = id
    }
}

class Titles {
    var title: String
    var id: Int
    
    init(title: String, id: Int){
        self.title = title
        self.id = id
    }
}

class Texts {
    var text: String
    var id: Int
    
    init(text: String, id: Int){
        self.text = text
        self.id = id
    }
}


var lessonsArray = [
    LessonsListModel.init(
        lessonName: "am, is, are",
        images: [Images(name: "1.1", id: 1), Images(name: "1.2", id: 2)],
        titles: [Titles(title: """
<span style="font-size:22px"><i><b>Am/is/are</b> обычно не переводится на русский язык:</i></span>
""", id: 3), Titles(title: "title 2", id: 5)],
        texts: [Texts(text: "text 1", id: 4), Texts(text: "text 2", id: 6)],
        time: Teneses.presentSimple),
    
    LessonsListModel.init(
        lessonName: "am, is, are (Questions)",
        images: [Images(name: "1.1", id: 1), Images(name: "1.2", id: 6)],
        titles: [Titles(title: "title 3", id: 2), Titles(title: "title 4", id: 4)],
        texts: [Texts(text: "text 1", id: 3), Texts(text: "text 2", id: 5)],
        time: Teneses.presentSimple),
    
    LessonsListModel.init(
        lessonName: "I'm tired, I'm scared, I'm late",
        images: [Images(name: "1.1", id: 3), Images(name: "1.2", id: 6)],
        titles: [Titles(title: "title 3", id: 1), Titles(title: "title 4", id: 4)],
        texts: [Texts(text: "text 1", id: 2), Texts(text: "text 2", id: 5)],
        time: Teneses.presentSimple),

]

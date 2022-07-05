//
//  LearnStepTwoCVC.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 22.12.2021.
//

import UIKit



class LearnStepTwoCVC: UICollectionViewController {
    
    var selectedLesson: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")

    }

   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if (segue.identifier == "StartLessonSeg") {
           let destinationVC = segue.destination as? LessonVC
           destinationVC?.indexForLesson = selectedLesson ?? 0
       }
   }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return lessonsArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LearnStepTwoCell", for: indexPath) as! LearnStepTwoCell
        
        cell.layer.cornerRadius = 10
        let currentTitle = lessonsArray[indexPath.row].lessonName
        cell.title(setNameForButton: currentTitle!)
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    

    
    func selectLesson(index: Int) {
        selectedLesson = index
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        
            selectLesson(index: indexPath.row)
            self.performSegue(withIdentifier: "StartLessonSeg", sender: self)

        return true
    }

}


extension LearnStepTwoCVC: UICollectionViewDelegateFlowLayout{
    

func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let itemsPerRow: CGFloat = 1
    let paddingWidth = 20 * (itemsPerRow + 1)
    let availableWidth = collectionView.frame.width - paddingWidth
    let widthPerItem = availableWidth / itemsPerRow
    return CGSize(width: widthPerItem, height: 50)
}

    

}

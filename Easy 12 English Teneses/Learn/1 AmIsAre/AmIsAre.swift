//
//  AmIsAre.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 23.12.2021.
//

import UIKit
// взять инфу и можно удалять
class AmIsAre: UIViewController {

    @IBOutlet weak var blockOneTitle: UILabel!
    @IBOutlet weak var blockOneContent: UILabel!
    @IBOutlet weak var blockTwoTitle: UILabel!
    @IBOutlet weak var blockTwoContent: UILabel!
    @IBOutlet weak var blockThreeTitle: UILabel!
    @IBOutlet weak var blockThreeContent: UILabel!
    
    // block's content
    let blockOneTitleText = """
    <span style="font-size:22px"><i><b>Am/is/are</b> обычно не переводится на русский язык:</i></span>
    """
    
    private let blockOneContentText = """
<span style="font-size:20px">
</br></br></br></br>
<p>
• I<b>'m</b> 32 years old Му sister is 29.</br>
&nbsp;<em>Мне 32 года. Моей сестре 29лет.</em></p>

<p>
• Steve <b>is</b> ill. He's in bed. <br />
&nbsp;<em>Стив болен. Он в постели.</em></p>

<p>
• Му саг <b>is</b> very old. <br />
&nbsp;<em>Моя машина очень старая.</em></p>

<p>
• Anna and I <b>are</b> good friends. <br />
&nbsp;<em>Мы с Анной хорошие друзья.</em></p>

<p>
• You<b>'re</b> very busy today. <br />
&nbsp;<em>Сегодня вы очень заняты.</em></p>

<p>
• Your keys <b>are</b> on the table. <br />
&nbsp;<em>Твои ключи на столе.</em></p>
<p>
• l<b>'m</b> not English. l'm from Scotland. </br>
&nbsp;<em>Я не англичанин. Я из Шотландии.</em></p>
<p>
• James <b>isn't</b> а teacher. He's а student.<br />
&nbsp;<em>Джеймс не учитель. Он студент.</em></p>
<p>
• Those people <b>aren't</b> American. They're Australian. <br />
&nbsp;<em>Эти люди не американцы. Они австралийцы.</em></p></span>
"""
    
    
    let blockTwoTitleText = """
    <span style="font-size:22px"><i>Обратите внимание, что в этих предложениях необходимо использовать <b>lt's</b></span>:
    """
    let blockTwoContentText = """
    <span style="font-size:20px">
        <p>
            • lt's nine o'clock. / lt's ten o'clock. / lt's 6.45.</br> <em>&nbsp;(Сейчас) ... часов</em>.
        </p>
        <p>
            • lt's early. / lt's late.</br> <em>&nbsp;(Сейчас) рано/поздно</em>.
        </p>
    </span>
    """
    
    
    
    let blockThreeTitleText = """
    <span style="font-size:22px"><i>that<b>'s</b> = that <b>is</b> / there<b>'s</b> = there <b>is</b> / here<b>'s</b> = here <b>is</b></span>
    """
    
    let blockThreeContentText = """
    <span style="font-size:20px">
        <p>• Thank you. That<strong>&#39;s</strong> very kind of you. </br>
            <em>&nbsp;. . . Это очень мило с вашей стороны.</em></p>

        <p>• Look! There<strong>'s</strong> Chris.</br>
            <em>&nbsp;Смотри! Вот Крис.</em></p>

        <p>• Here<strong>'s</strong> your key.</br>
            <em>&nbsp;Вот ваш ключ.</em></p>
    </span>
"""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blockOneTitle.attributedText = blockOneTitleText.htmlToAttributedString
        blockOneContent.attributedText = blockOneContentText.htmlToAttributedString
        blockTwoTitle.attributedText = blockTwoTitleText.htmlToAttributedString
        blockTwoContent.attributedText = blockTwoContentText.htmlToAttributedString
        blockThreeTitle.attributedText = blockThreeTitleText.htmlToAttributedString
        blockThreeContent.attributedText = blockThreeContentText.htmlToAttributedString
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension AmIsAre {
    
    
}





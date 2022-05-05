//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Борис Павлов on 05.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coreAnimationView: UIView!
    
    private var animationStarted = false
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) {
                
                if !self.animationStarted {
                    self.coreAnimationView.frame.origin.x -= 40
                    self.animationStarted = true
                    self.animationStarted.toggle()
                }
            }
    }
}
/*
 Судя по уроку некорректная работа анимации, или информация уже устарела.
 При нажатии на кнопку, вью не двигается.(Если анимация еще не прописана)
 Если анимация прописана, вью двигается как маятник, только есть одно НО, при нажатии на кнопку анимация происходит в правую сторону, когда у Алексея задан параметр в левую сторону. (НЕ понятно)
 При повторном нажатии, анимация перестает работать. У Алексея же наоборот, анимация продолжает работать, и вью смещается левее.
 (Код и положение объектов в сториборде идентичные тому, что Алексей показывает в уроке)
 p.s вопрос по уроку 2.9 (CocoaPods и работа с анимациями), недопонимание начинается с тайминга 1ч 22 минуты
 */

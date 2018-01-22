//
//  GameViewController.swift
//  TT Cash
//
//  Created by Amine Kammoun on 16.12.17.
//  
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var time: UIButton!
    @IBOutlet weak var score: UIButton!
    @IBOutlet weak var boule11: UIButton!
    @IBOutlet weak var boule12: UIButton!
    @IBOutlet weak var boule13: UIButton!
    @IBOutlet weak var boule14: UIButton!
    @IBOutlet weak var boule15: UIButton!
    @IBOutlet weak var boule16: UIButton!
    @IBOutlet weak var boule21: UIButton!
    @IBOutlet weak var boule22: UIButton!
    @IBOutlet weak var boule23: UIButton!
    @IBOutlet weak var boule24: UIButton!
    @IBOutlet weak var boule25: UIButton!
    @IBOutlet weak var boule26: UIButton!
    @IBOutlet weak var boule31: UIButton!
    @IBOutlet weak var boule32: UIButton!
    @IBOutlet weak var boule33: UIButton!
    @IBOutlet weak var boule34: UIButton!
    @IBOutlet weak var boule35: UIButton!
    @IBOutlet weak var boule36: UIButton!
    @IBOutlet weak var boule41: UIButton!
    @IBOutlet weak var boule42: UIButton!
    @IBOutlet weak var boule43: UIButton!
    @IBOutlet weak var boule44: UIButton!
    @IBOutlet weak var boule45: UIButton!
    @IBOutlet weak var boule46: UIButton!
    @IBOutlet weak var boule51: UIButton!
    @IBOutlet weak var boule52: UIButton!
    @IBOutlet weak var boule53: UIButton!
    @IBOutlet weak var boule54: UIButton!
    @IBOutlet weak var boule55: UIButton!
    @IBOutlet weak var boule56: UIButton!
    @IBOutlet weak var boule61: UIButton!
    @IBOutlet weak var boule62: UIButton!
    @IBOutlet weak var boule63: UIButton!
    @IBOutlet weak var boule64: UIButton!
    @IBOutlet weak var boule65: UIButton!
    @IBOutlet weak var boule66: UIButton!
    @IBOutlet weak var boule71: UIButton!
    @IBOutlet weak var boule72: UIButton!
    @IBOutlet weak var boule73: UIButton!
    @IBOutlet weak var boule74: UIButton!
    @IBOutlet weak var boule75: UIButton!
    @IBOutlet weak var boule76: UIButton!
    @IBOutlet weak var boule81: UIButton!
    @IBOutlet weak var boule82: UIButton!
    @IBOutlet weak var boule83: UIButton!
    @IBOutlet weak var boule84: UIButton!
    @IBOutlet weak var boule85: UIButton!
    @IBOutlet weak var boule86: UIButton!
    
    @IBAction func Onone() {
        if currentPosition <= 5 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("1", for: .normal)
            currentPosition += 1
        }
    }
    
    @IBAction func onTwo() {
        if currentPosition <= 5 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("2", for: .normal)
            currentPosition += 1
        }
    }
    
    @IBAction func onThree() {
        if currentPosition <= 5 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("3", for: .normal)
            currentPosition += 1
        }
    }
    
    @IBAction func onFour() {
        if currentPosition <= 5 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("4", for: .normal)
            currentPosition += 1
        }
    }
    
    @IBAction func onFive() {
        if currentPosition <= 5 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("5", for: .normal)
            currentPosition += 1
        }
    }
    
    @IBAction func onSix() {
        if currentPosition <= 5 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("6", for: .normal)
            currentPosition += 1
        }
    }
    
    @IBAction func onSeven() {
        if currentPosition <= 5 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("7", for: .normal)
            currentPosition += 1
        }
    }
    
    @IBAction func onEight() {
        if currentPosition <= 5 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("8", for: .normal)
            currentPosition += 1
        }
    }
    
    @IBAction func onNine() {
        if currentPosition <= 5 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("9", for: .normal)
            currentPosition += 1
        }
    }
    
    @IBAction func onZero() {
        if currentPosition <= 5 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("0", for: .normal)
            currentPosition += 1
        }
    }
    
    @IBAction func onDelete() {
        if currentPosition > 0 && currentRow <= 7{
            currentPosition = currentPosition - 1
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("", for: .normal)
            
        } else if currentPosition == 0 && currentRow <= 7{
            let currentButton = table[currentRow][currentPosition]
            currentButton.setTitle("", for: .normal)
        }
    }
    
    @IBAction func onValidate() {
        if currentPosition == 6 && currentRow <= 7{
            selectedNumber = chosenNumberToArray()
            compareNumbers()
            currentPosition = 0
            currentRow += 1
        }
        if currentRow == 8 {
            AlertOnLoose()
        }
    }
    
    var table = [[UIButton]]()
    var selectedNumber = [Int]()
    var currentRow : Int = 0
    var currentPosition : Int = 0
    var randomNumber : Int = 0
    var randomArray = [Int]()
    var randomToString : String = ""
    var totalTime = 121
    var scoreCount = 3000
    var counter : Int = 0
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        randomNumber = Int (arc4random_uniform(900000) + 100000)
        print("the random number is = \(randomNumber)")
        randomToString = String(randomNumber)
        // random is an array which contains the characters of the random number
        let random = randomToString.map {
            String($0)
        }
        // randomArray is an array which contains the digits of the random number
        randomArray = random.map{
            Int($0)!
        }
        
        var row = [UIButton]()
        row.append(boule11)
        row.append(boule12)
        row.append(boule13)
        row.append(boule14)
        row.append(boule15)
        row.append(boule16)
        table.append(row)
        row = [UIButton]()
        row.append(boule21)
        row.append(boule22)
        row.append(boule23)
        row.append(boule24)
        row.append(boule25)
        row.append(boule26)
        table.append(row)
        row = [UIButton]()
        row.append(boule31)
        row.append(boule32)
        row.append(boule33)
        row.append(boule34)
        row.append(boule35)
        row.append(boule36)
        table.append(row)
        row = [UIButton]()
        row.append(boule41)
        row.append(boule42)
        row.append(boule43)
        row.append(boule44)
        row.append(boule45)
        row.append(boule46)
        table.append(row)
        row = [UIButton]()
        row.append(boule51)
        row.append(boule52)
        row.append(boule53)
        row.append(boule54)
        row.append(boule55)
        row.append(boule56)
        table.append(row)
        row = [UIButton]()
        row.append(boule61)
        row.append(boule62)
        row.append(boule63)
        row.append(boule64)
        row.append(boule65)
        row.append(boule66)
        table.append(row)
        row = [UIButton]()
        row.append(boule71)
        row.append(boule72)
        row.append(boule73)
        row.append(boule74)
        row.append(boule75)
        row.append(boule76)
        table.append(row)
        row = [UIButton]()
        row.append(boule81)
        row.append(boule82)
        row.append(boule83)
        row.append(boule84)
        row.append(boule85)
        row.append(boule86)
        table.append(row)
        
        
        
        // Countdown
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GameViewController.update), userInfo: nil, repeats: true)
        
        
    }

    //_________________________________________________
    
    @objc func update(){
        
        var minute = "02"
        var seconds = 0
        var secondsToString = "00"
        if totalTime > 0 {
            
            if totalTime > 61 && totalTime < 121 {
                minute = "01"
                seconds = totalTime % 61
                if seconds < 10 && seconds > 0 {
                    secondsToString = "0" + seconds.description
                } else {
                    secondsToString = seconds.description
                }
            } else if totalTime < 61 && totalTime > 1 {
                minute = "00"
                seconds = totalTime - 1
                if totalTime < 11 && totalTime > 1 {
                    secondsToString = "0" + seconds.description
                } else {
                    secondsToString = seconds.description
                }
            } else if totalTime == 61{
                minute = "01"
                secondsToString = "00"
            } else if totalTime == 1 {
                scoreCount = 0
                secondsToString = "00"
                minute = "00"
                AlertOnLoose()
            }
            
            if totalTime == 31 {
                time.setTitleColor( UIColor.red, for: .normal)
            }
            
            if totalTime % 2 == 1 && totalTime < 121 && totalTime > 1{
                scoreCount -= 50
            }
            
            totalTime -= 1
            time.setTitle(minute + ":" + secondsToString, for: .normal)
            score.setTitle(scoreCount.description, for: .normal)
        }
        
    }
    
    //_________________________________________________
    
    func chosenNumberToArray() -> [Int]{
        var number = [Int]()
        for index in 0...5 {
            let currentButton = table[currentRow][index]
            number.append (Int (currentButton.currentTitle!)!)
        }
        return number
    }
    //_________________________________________________
    
    func compareNumbers(){
        counter = 0
        var temporaryRandom = randomArray
        
        print("before Blue Coloration : \n the temporary random array = \(temporaryRandom) \n the selected number array is = \(selectedNumber)")
        
        for index in 0...5 {
            if temporaryRandom[index] == selectedNumber[index] {
                selectedNumber[index] = -1
                temporaryRandom[index] = -2
                let currentButton = table[currentRow][index]
                let imageView = UIImage(named: "layblue")
                currentButton.setBackgroundImage(imageView, for: .normal)
                counter += 1
                
            }
        }
        
        print("after Blue Coloration : \n the temporary random array = \(temporaryRandom) \n the selected number array is = \(selectedNumber)")
        
        var k : Int = 0
        while k < 6 {
            var l : Int = 0
            while l < 6 {
                let currentButton = table[currentRow][l]
                if temporaryRandom[k] == -2 {
                    l = 7
                } else if selectedNumber[l] == temporaryRandom[k] && k != l {
                    let imageView = UIImage(named: "layyellow")
                    currentButton.setBackgroundImage(imageView, for: .normal)
                    selectedNumber[l] = -1
                    temporaryRandom[k] = -2
                    l = 7
                }
                l += 1
            }
            k += 1
        }
        
        print("after Blue Coloration : \n the temporary random array = \(temporaryRandom) \n the selected number array is = \(selectedNumber)")
        
        
        if counter == 6 {
            timer.invalidate()
            AlertOnWin()
        }
        
        
    }
    
    //_________________________________________________
    
    func AlertOnWin() {
        let alert = UIAlertController(title: "CONGRATULATION!", message: "You won! Your Score is \(scoreCount)", preferredStyle: UIAlertControllerStyle.alert)
        
        let confirmAction : (UIAlertAction) -> Void = AlertOnName
        let replayAction : (UIAlertAction) -> Void = replayHandler
        let exitAction : (UIAlertAction) -> Void = exitHandler
        
        alert.addAction(UIAlertAction(title: "Rejouer", style: UIAlertActionStyle.default, handler: replayAction))
        alert.addAction(UIAlertAction(title: "Enregistrer votre Score", style: UIAlertActionStyle.default, handler: confirmAction ))
        alert.addAction(UIAlertAction(title: "Quitter", style: UIAlertActionStyle.default, handler: exitAction ))
        self.present(alert, animated: true, completion: nil)
        
    }
    //__________________________________________________
    func exitHandler(_ : UIAlertAction){
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
    //__________________________________________________
    func replayHandler(_ : UIAlertAction) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "gameViewController")
        self.present(viewController, animated: true, completion: nil)
    }
    //___________________________________________________
    func AlertOnName(_ : UIAlertAction){
        let alertConfirm = UIAlertController(title: "Entrez votre nom et prénom", message: "", preferredStyle: .alert)
        
        alertConfirm.addTextField{ (textfield) in
            textfield.placeholder = "Entrez votre Nom"
        }
        alertConfirm.addTextField{ (textfield) in
            textfield.placeholder = "Entrez votre Prénom"
        }
        let confirmAction = UIAlertAction(title: "Ok", style: .default){
            (_) in
            guard
            let name = alertConfirm.textFields?.first?.text,
            let prename = alertConfirm.textFields?.last?.text
            else {return}
            self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
        }
        
        alertConfirm.addAction(confirmAction)
        
        self.present(alertConfirm, animated: true, completion: nil)
    }
    
    //_______________________________________
    
    func AlertOnLoose() {
        let alert = UIAlertController(title: "OUPS!", message: "You Loose! The number is \(randomNumber)", preferredStyle: UIAlertControllerStyle.alert)
        
        let replayAction : (UIAlertAction) -> Void = replayHandler
        let exitAction : (UIAlertAction) -> Void = exitHandler
        
        alert.addAction(UIAlertAction(title: "Rejouer", style: UIAlertActionStyle.default, handler: replayAction))
        alert.addAction(UIAlertAction(title: "Quitter", style: UIAlertActionStyle.default, handler: exitAction))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

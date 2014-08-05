//
//  ViewController.swift
//  SecondTrySwift
//
//  Created by Gökhan Çokkeçeci on 4.08.2014.
//  Copyright (c) 2014 Gökhan Çokkeçeci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var numberOne = ""
    var numberTwo = ""
    var toplamIslem = "0"
    var cikarmaIslem = "0"
    var bolmeIslem = "0"
    var carpmaIslem = "0"
    var resultTotal = ""
    
    @IBOutlet weak var TextHesaplama: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonZero(sender: UIButton)
    {
        if(TextHesaplama.text != "0")
        {
            let stringPlusString = TextHesaplama.text + "0"
            TextHesaplama.text = stringPlusString
        }
        if(resultTotal != "")
        {
            numberOne = resultTotal
            TextHesaplama.text = ""
        }
    }
    @IBAction func ButtonOne(sender: UIButton)
    {
        if(TextHesaplama.text == "0")
        {
            TextHesaplama.text = ""
        }
        if(resultTotal != "")
        {
            numberOne = resultTotal
            TextHesaplama.text = ""
        }
        let stringPlusString = TextHesaplama.text + "1"
        TextHesaplama.text = stringPlusString

    }
    
    @IBAction func ButtonTwo(sender: UIButton)
    {
        if(TextHesaplama.text == "0")
        {
            TextHesaplama.text = ""
        }
        if(resultTotal != "")
        {
            numberOne = resultTotal
            TextHesaplama.text = ""
        }
        let stringPlusString = TextHesaplama.text + "2"
        TextHesaplama.text = stringPlusString
    }
    
    @IBAction func ButtonThree(sender: UIButton)
    {
        if(TextHesaplama.text == "0")
        {
            TextHesaplama.text = ""
        }
        if(resultTotal != "")
        {
            numberOne = resultTotal
            TextHesaplama.text = ""
        }
        let stringPlusString = TextHesaplama.text + "3"
        TextHesaplama.text = stringPlusString
    }
    @IBAction func ButtonFour(sender: UIButton)
    {
        if(TextHesaplama.text == "0")
        {
            TextHesaplama.text = ""
        }
        if(resultTotal != "")
        {
            numberOne = resultTotal
            TextHesaplama.text = ""
        }
        let stringPlusString = TextHesaplama.text + "4"
        TextHesaplama.text = stringPlusString
    }
    
    @IBAction func ButtonFive(sender: UIButton)
    {
        if(TextHesaplama.text == "0")
        {
            TextHesaplama.text = ""
        }
        if(resultTotal != "")
        {
            numberOne = resultTotal
            TextHesaplama.text = ""
        }
        let stringPlusString = TextHesaplama.text + "5"
        TextHesaplama.text = stringPlusString
    }
    
    @IBAction func ButtonSix(sender: UIButton)
    {
        if(TextHesaplama.text == "0")
        {
            TextHesaplama.text = ""
        }
        if(resultTotal != "")
        {
            numberOne = resultTotal
            TextHesaplama.text = ""
        }
        let stringPlusString = TextHesaplama.text + "6"
        TextHesaplama.text = stringPlusString
    }
    
    @IBAction func ButtonSeven(sender: UIButton)
    {
        if(TextHesaplama.text == "0")
        {
            TextHesaplama.text = ""
        }
        if(resultTotal != "")
        {
            numberOne = resultTotal
            TextHesaplama.text = ""
        }
        let stringPlusString = TextHesaplama.text + "7"
        TextHesaplama.text = stringPlusString
    }
    
    @IBAction func ButtonEight(sender: UIButton)
    {
        if(TextHesaplama.text == "0")
        {
            TextHesaplama.text = ""
        }
        if(resultTotal != "")
        {
            numberOne = resultTotal
            TextHesaplama.text = ""
        }
        let stringPlusString = TextHesaplama.text + "8"
        TextHesaplama.text = stringPlusString
    }
    
    @IBAction func ButtonNine(sender: UIButton)
    {
        if(TextHesaplama.text == "0")
        {
            TextHesaplama.text = ""
        }
        if(resultTotal != "")
        {
            numberOne = resultTotal
            TextHesaplama.text = ""
        }
        let stringPlusString = TextHesaplama.text + "9"
        TextHesaplama.text = stringPlusString
    }
    @IBAction func DeleteButton(sender: UIButton)
    {
        if(TextHesaplama.text != "")
        {
            let stringPlusString = TextHesaplama.text
            let lastChar = advance(stringPlusString.endIndex, -1)
            let deletedLastItem = stringPlusString.substringWithRange(Range<String.Index>(start: stringPlusString.startIndex, end:lastChar ))
            
            TextHesaplama.text = deletedLastItem
        }
    }
    @IBAction func ToplamaButton(sender: UIButton)
    {
            if(numberOne != "")
            {
                numberTwo = TextHesaplama.text
                if(numberOne.bridgeToObjectiveC().containsString(".") || numberOne.bridgeToObjectiveC().containsString(".") )
                {
                    let toplamSayi = numberOne.bridgeToObjectiveC().floatValue + numberTwo.bridgeToObjectiveC().floatValue
                    let toplamSayiToString = NSString(format: "%.2f", toplamSayi)
                    TextHesaplama.text = toplamSayiToString
                    resultTotal = toplamSayiToString
                    numberOne = ""
                    numberTwo = ""
                    toplamIslem = "0"
                }
           
                else
                {
                    let toplamSayi = numberOne.toInt()! + numberTwo.toInt()!
                    TextHesaplama.text = String(toplamSayi)
                    resultTotal = String(toplamSayi)
                    numberOne = ""
                    numberTwo = ""
                    toplamIslem = "0"
                    
                }
            }
            
            else
            {
                if(toplamIslem == "0")
                {
                    toplamIslem = "1"
                    numberOne = TextHesaplama.text
                    TextHesaplama.text = ""
                }
        }
        
    }
    @IBAction func CikarmaButton(sender: UIButton)
    {
        
        if(numberOne != "")
        {
            numberTwo = TextHesaplama.text
            if(numberOne.bridgeToObjectiveC().containsString(".") || numberOne.bridgeToObjectiveC().containsString(".") )
            {
                let cikanSayi = numberOne.bridgeToObjectiveC().floatValue - numberTwo.bridgeToObjectiveC().floatValue
                let cikanSayiToString = NSString(format: "%.2f", cikanSayi)
                TextHesaplama.text = cikanSayiToString
                resultTotal = cikanSayiToString
                numberOne = ""
                numberTwo = ""
                cikarmaIslem = "0"
            }
            else
            {
                let cikanSayi = numberOne.toInt()! - numberTwo.toInt()!
                TextHesaplama.text = String(cikanSayi)
                resultTotal = String(cikanSayi)
                numberOne = ""
                numberTwo = ""
                cikarmaIslem = "0"
                
            }
        }
        else
        {
            if(cikarmaIslem == "0")
            {
                cikarmaIslem = "1"
                numberOne = TextHesaplama.text
                TextHesaplama.text = ""
            }
        }
        
    }
    @IBAction func bolmeButton(sender: UIButton)
    {
        if(numberOne != "")
        {
            numberTwo = TextHesaplama.text
            if(numberOne.bridgeToObjectiveC().containsString(".") || numberOne.bridgeToObjectiveC().containsString(".") )
            {
                
                let bolenSayi = numberOne.bridgeToObjectiveC().floatValue / numberTwo.bridgeToObjectiveC().floatValue
                let bolenSayiToString = NSString(format: "%.2f", bolenSayi)
                TextHesaplama.text = bolenSayiToString
                resultTotal = bolenSayiToString
                numberOne = ""
                numberTwo = ""
                bolmeIslem = "0"
            }
            
            let bolenSayi = Double(numberOne.toInt()!) / Double(numberTwo.toInt()!)
            let bolenSayiToString = NSString(format: "%.2f", bolenSayi)
            TextHesaplama.text = bolenSayiToString
            resultTotal = bolenSayiToString
            numberOne = ""
            numberTwo = ""
            bolmeIslem = "0"
            
        }
        else
        {
            if(bolmeIslem == "0")
            {
                bolmeIslem = "1"
                numberOne = TextHesaplama.text
                TextHesaplama.text = ""
            }
        }
        
    }
    @IBAction func carpmaButton(sender: UIButton)
    {
        if(numberOne != "")
        {
            numberTwo = TextHesaplama.text
            if(numberOne.bridgeToObjectiveC().containsString(".") || numberOne.bridgeToObjectiveC().containsString(".") )
            {
                let carpanSayi = numberOne.bridgeToObjectiveC().floatValue * numberTwo.bridgeToObjectiveC().floatValue
                let carpanSayiToString = NSString(format: "%.2f", carpanSayi)
                TextHesaplama.text = carpanSayiToString
                resultTotal = carpanSayiToString
                numberOne = ""
                numberTwo = ""
                carpmaIslem = "0"
            }
            else
            {
                let carpanSayi = numberOne.toInt()! * numberTwo.toInt()!
                TextHesaplama.text = String(carpanSayi)
                resultTotal = String(carpanSayi)
                numberOne = ""
                numberTwo = ""
                carpmaIslem = "0"
            }
        }
        else
        {
            if(carpmaIslem == "0")
            {
                carpmaIslem = "1"
                numberOne = TextHesaplama.text
                TextHesaplama.text = ""
            }
        }
        
    }
    @IBAction func CAButoon(sender: UIButton)
    {
        TextHesaplama.text = ""
        numberOne = ""
        numberTwo = ""
        toplamIslem = "0"
        cikarmaIslem = "0"
        bolmeIslem = "0"
        carpmaIslem = "0"
        resultTotal = ""
        
    }
    
    @IBAction func noktaButton(sender: UIButton)
    {
        if(TextHesaplama.text != "")
        {
            if(!TextHesaplama.text.bridgeToObjectiveC().containsString("."))
            {
                let stringPlusString = TextHesaplama.text + "."
                TextHesaplama.text = stringPlusString
            }
           
        }
    }
    @IBAction func EsittirButton(sender: UIButton)
    {
        numberTwo = TextHesaplama.text
        if(toplamIslem == "1")
        {
            if(numberOne.bridgeToObjectiveC().containsString(".") || numberOne.bridgeToObjectiveC().containsString(".") )
            {
                
                let toplamSayi = numberOne.bridgeToObjectiveC().floatValue + numberTwo.bridgeToObjectiveC().floatValue
                let toplamSayiToString = NSString(format: "%.2f", toplamSayi)
                TextHesaplama.text = toplamSayiToString
                numberOne = ""
                numberTwo = ""
                toplamIslem = "0"
            }
            else
            {
                let toplamSayi = numberOne.toInt()! + numberTwo.toInt()!
                TextHesaplama.text = String(toplamSayi)
                numberOne = ""
                numberTwo = ""
                toplamIslem = "0"
            }
            
        }
        
        if(cikarmaIslem == "1")
        {
            
            if(numberOne.bridgeToObjectiveC().containsString(".") || numberOne.bridgeToObjectiveC().containsString(".") )
            {
                
                let cikanSayi = numberOne.bridgeToObjectiveC().floatValue - numberTwo.bridgeToObjectiveC().floatValue
                let cikanSayiToString = NSString(format: "%.2f", cikanSayi)
                TextHesaplama.text = cikanSayiToString
                numberOne = ""
                numberTwo = ""
                cikarmaIslem = "0"
            }
            else
            {
                let cikanSayi = numberOne.toInt()! - numberTwo.toInt()!
                TextHesaplama.text = String(cikanSayi)
                numberOne = ""
                numberTwo = ""
                cikarmaIslem = "0"
            }
            
        }
        if(carpmaIslem == "1")
        {
            if(numberOne.bridgeToObjectiveC().containsString(".") || numberOne.bridgeToObjectiveC().containsString(".") )
            {
                
                let carpanSayi = numberOne.bridgeToObjectiveC().floatValue * numberTwo.bridgeToObjectiveC().floatValue
                let carpanSayiToString = NSString(format: "%.2f", carpanSayi)
                TextHesaplama.text = carpanSayiToString
                numberOne = ""
                numberTwo = ""
                carpmaIslem = "0"
            }
            else
            {
                let carpanSayi = numberOne.toInt()! * numberTwo.toInt()!
                TextHesaplama.text = String(carpanSayi)
                numberOne = ""
                numberTwo = ""
                carpmaIslem = "0"
            }
          
        }
        
        if(bolmeIslem == "1")
        {
            if(numberOne.bridgeToObjectiveC().containsString(".") || numberOne.bridgeToObjectiveC().containsString(".") )
            {
                
                let bolenSayi = numberOne.bridgeToObjectiveC().floatValue / numberTwo.bridgeToObjectiveC().floatValue
                let bolenSayiToString = NSString(format: "%.2f", bolenSayi)
                TextHesaplama.text = bolenSayiToString
                numberOne = ""
                numberTwo = ""
                bolmeIslem = "0"
            }
            else
            {
                let bolenSayi = Double(numberOne.toInt()!) / Double(numberTwo.toInt()!)
                let bolenSayiToString = NSString(format: "%.2f", bolenSayi)
                TextHesaplama.text = bolenSayiToString
                numberOne = ""
                numberTwo = ""
                bolmeIslem = "0"
            
            }

        }
        
    }
    
}


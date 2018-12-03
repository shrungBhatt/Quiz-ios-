//
//  ViewController.swift
//  Quiz
//
//  Created by Shrung Bhatt on 02/12/18.
//  Copyright © 2018 Shrung Bhatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!;
    @IBOutlet var answerLabel: UILabel!;
    
    let questions: [String] = [
        "Which is the tallest statue in the World?",
        "Which is the longest river in the world",
        "Which is the tallest building in the world",
        "What is the capital of vermont"
    ];
    
    let answers: [String] = [
        "Statue of Unity",
        "Nile",
        "Burj Khalifa",
        "Montpelier"
    ];
    
    var currentQuestionIndex: Int = 0;
    
    @IBAction func showNextQuestion(_sender: UIButton){
        currentQuestionIndex += 1;
        
        if(currentQuestionIndex==questions.count){
            currentQuestionIndex = 0;
        }
        
        let question: String = questions[currentQuestionIndex];
        questionLabel.text = question;
        answerLabel.text = "???";
        
    }

    @IBAction func showAnswer(_sender: UIButton){
        let answer: String = answers[currentQuestionIndex];
        answerLabel.text = answer;
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        questionLabel.text = questions[currentQuestionIndex];
        answerLabel.text = "???";
    }

}


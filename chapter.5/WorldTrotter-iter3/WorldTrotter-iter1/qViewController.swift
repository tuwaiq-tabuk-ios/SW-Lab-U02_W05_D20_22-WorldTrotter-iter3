//
//  ViewController.swift
//  TriviaMultipleChoice
//
//  Created by عبدالعزيز البلوي on 15/03/1443 AH.
//
import UIKit
import AVFoundation
class qViewController: UIViewController {
  
  
  @IBOutlet weak var scoreLabel: UILabel!
  
  
  @IBOutlet weak var questionLabel: UILabel!
  
  
  @IBOutlet weak var firstChoise: UIButton!
  
  
  @IBOutlet weak var sacendChoise: UIButton!
  
  
  @IBOutlet weak var thirdChoise: UIButton!
  
  
  @IBOutlet weak var fourthChoise: UIButton!
  
  
  
  @IBOutlet weak var progressBottom: UIProgressView!
  
  var quiz = QuizManager()
  
  
  var questionNumber:Int = 0
  
  
  var score = 0
  
  
  var player: AVAudioPlayer?
  
  
  var nextQuestion:Int = 0
  
  
  override func viewDidLoad() {
    
    
    
    super.viewDidLoad()
    questionLabel.layer.cornerRadius = 50
    questionLabel.layer.borderWidth = 1
    questionLabel.layer.masksToBounds = true
    
    
    firstChoise.layer.cornerRadius = 50
    firstChoise.layer.borderWidth = 1
    firstChoise.layer.masksToBounds = true
    
        
    sacendChoise.layer.cornerRadius = 50
    sacendChoise.layer.borderWidth = 1
    sacendChoise.layer.masksToBounds = true
    
    
    thirdChoise.layer.cornerRadius = 50
    thirdChoise.layer.borderWidth = 1
    thirdChoise.layer.masksToBounds = true
    
    
    fourthChoise.layer.cornerRadius = 50
    fourthChoise.layer.borderWidth = 1
    fourthChoise.layer.masksToBounds = true
    
    updateUI()
    progressBottom.progress = 0.0
    
  }
  
  
  @IBAction func answerSelected(_ sender: UIButton) {
    
    let userAnswer = sender.currentTitle!
    
    
    let check = quiz.checkAnswer(userAnswer)
    
    
    if check{
      
      
      sender.backgroundColor = UIColor.green
    }
    else {
      
      
      sender.backgroundColor = UIColor.red
    }
    
    
    Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    
    
    if quiz.nextQuestion() {
      
      
    }
    else {
      showAlertView()
    }
  }
  
  
  @objc func updateUI(){
    questionLabel.text = quiz.checkQuestion()
    progressBottom.progress = quiz.checkProgress()
    scoreLabel.text = "\(quiz.checkScore())"
    
    
    
    firstChoise.backgroundColor = UIColor.black
    sacendChoise.backgroundColor = UIColor.black
    thirdChoise.backgroundColor = UIColor.black
    fourthChoise.backgroundColor = UIColor.black
    
    
    
    firstChoise.setTitle(quiz.checkChoices()[0], for: .normal);
    sacendChoise.setTitle(quiz.checkChoices()[1], for: .normal)
    thirdChoise.setTitle(quiz.checkChoices()[2], for: .normal)
    fourthChoise.setTitle(quiz.checkChoices()[3], for: .normal)
  }
  
  
  func showAlertView() {
    
    
    let alert = UIAlertController(title: "End game ",
                                  message: "play agin ?",
                                  preferredStyle: .alert)
    
    
    alert.addAction(UIAlertAction(title: "Yes", style: .cancel,
                                  handler: { action in
                                    print("Yes clicked")
                                    self.start()
                                  }))
    
    
    alert.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
    present(alert, animated: true, completion: nil)
    playSound()
  }
  
  
  func playSound() {
    
    
    guard let url = Bundle.main.url(forResource: "clap", withExtension: "wav") else { return }
    
    
    do {
      
      
      try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
      try AVAudioSession.sharedInstance().setActive(true)
      
      /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
      player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
      
      /* iOS 10 and earlier require the following line:
       player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
      
      guard let player = player else { return }
      
      
      player.play()
      
      
    } catch let error {
      print(error.localizedDescription)
    }
  }
  
  
  func start() {
    
    updateUI()
  }
  
}



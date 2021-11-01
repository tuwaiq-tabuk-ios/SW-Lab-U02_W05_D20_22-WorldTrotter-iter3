import UIKit
class ConversionViewController: UIViewController {
  override func loadView() {
    //  let ccWhiteBackground = UIColor(red: 245.0/255.0,
    //                                  green: 244.0/255.0,
    //                                  blue: 241.0/255.0,
    //                                  alpha: 1)
    //
    //  let ccOrange = UIColor(red: 225.0/255.0,
    //                         green: 88.0/255.0,
    //                         blue: 41.0/255.0,
    //                         alpha: 1)
    //
    // Create an empty view
    view = UIView()
    view.backgroundColor = UIColor.cmWhiteBackground
    // Create and add subviews
    
    let valueFarenheitLabel = createLabel(text: "212", textSize: 70, textColor: UIColor.cmOrange)
    
    let titleFarenheitLabel = createLabel(text: "degrees Fahrenheit", textSize: 36, textColor: cmOrange)
    
    let valueFarenheitLabel = createLabel(text: "is Really", textSize: 36, textColor: UIColor.cmOrange)
    
    let valueFarenheitLabel = createLabel(text: "100", textSize: 70, textColor: UIColor.cmOrange)
    
    let titleFarenheitLabel = createLabel(text: "degrees Celsius", textSize: 36, textColor: cmOrange)
    
    
    //valueFarenheitLabel.translatesAutoresizingMaskIntoConstraints = false
    //      view.addSubview(valueFarenheitLabel)
    //
    //
    //titleFarenheitLabel.translatesAutoresizingMaskIntoConstraints = false
    //     view.addSubview(titleFarenheitLabel)
    //  
    
    
    //  let isReallyLabel = UILabel()
    //     isReallyLabel.text = "is really"
    //     isReallyLabel.font = UIFont.systemFont(ofSize: 36)
    //isReallyLabel.translatesAutoresizingMaskIntoConstraints = false
    //     view.addSubview(isReallyLabel)
    //
    //
    //
    //  let valueCelsiusLabel = UILabel()
    //    valueCelsiusLabel.text = "100"
    //    valueCelsiusLabel.font = UIFont.systemFont(ofSize: 70)
    //  valueCelsiusLabel.textColor = UIColor(red: 255.0/255.0,
    //                                        green: 88.0/255.0,
    //                                        blue: 41.0/255.0,
    //                                            alpha: 1)
    //valueCelsiusLabel.translatesAutoresizingMaskIntoConstraints = false
    //    view.addSubview(valueCelsiusLabel)
    //
    //
    //
    //  let titleCelsiusLabel = UILabel()
    //    titleCelsiusLabel.text = "degrees Celsius"
    //    titleCelsiusLabel.font = UIFont.systemFont(ofSize: 36)
    //  titleCelsiusLabel.textColor = UIColor(red: 255.0/255.0,
    //                                        green: 88.0/255.0,
    //                                        blue: 41.0/255.0,
    //                                            alpha: 1)
    //titleCelsiusLabel.translatesAutoresizingMaskIntoConstraints = false
    //    view.addSubview(titleCelsiusLabel)
    //
    
    // Add constraints
    NSLayoutConstraint.activate([
      valueFarenheitLabel.topAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 8),
      
      valueFarenheitLabel.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
      
      titleFarenheitLabel.topAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 10),
      
      titleFarenheitLabel.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
      
      isReallyLabel.topAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 40),
      
      isRealyLabel.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
      valucelsiusLabel.topAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 40),
      
      isvalucelsiusLabel.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
      valucelsiusLabel.topAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 40),
      
      isvaluceleusLabel.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
    ])
    
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    print("ConversionViewController loaded its view.")
  }
  func createLabel(text: String,
                   textSize: Int,
                   textColor: UIColor) ->UILabel {
    let Label = UILabel()
    Label.text = text
    Label.font = UIFont.systemFont(ofSize: textSize)
    Label.textColor = textColor
    Label.translatesAutoresizingMaskIntoConstraints = false
    return Label
    
  }
  
  
  
  
  
  
  
  
  
  //import UIKit
  //
  //class ConversionViewContrroller: UIViewController {
  //  override func viewWillAppear(_ : Bool) {
  //    super.viewWillAppear(true)
  //
  //    let red = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
  //    let blue = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
  //    let green = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
  //    print(red, blue, green)
  //
  //    view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
  //
  //    override func loadView(){
  //      view = UIView()
  //      view.backgroundColor = UIColor: 0.96, green: 0.96, blue: 0.95, alpha: 1.0)
  //    }
  //
  //  }
  //
  //  }
  
  ////
  //////with slack
  ////
  //import UIKit
  ////
  //class Conversion: UIViewController {
  //  override func viewDidLoad() {
  //
  //    super.viewDidLoad()
  //  print("ConversionViewController loaded its View.")
  //    super.viewWillAppear(true)
  //   }
  //
  //   override func viewWillAppear(_: Bool) {
  //     super.viewWillAppear(true)
  //     let red = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
  //     let blue = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
  //     let green = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
  //     print(red, blue, green)
  //     view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
  //   }
  //}
  
}

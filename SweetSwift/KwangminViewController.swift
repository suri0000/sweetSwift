import UIKit

class KwangminViewController: UIViewController {

   @IBOutlet weak var lblInfoShow1: UILabel!
   @IBOutlet weak var lblInfoShow2: UILabel!
   @IBOutlet weak var imageView: UIImageView!

   var info = ["name", "age", "mbti", "tmi", "blog"]
   var kkm = ["김광민", "26", "ENTJ", "백문이 불여일타 (100번 보는 것보다 1번 타이핑하는 것이 낫다!", "blog.naver.com/kex8977"]
   var count = 0
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      let img = UIImage(named: "kkm.jpeg")
      imageView.image = img
      //이미지 뷰에 그림파일 할당해주기
   }
   
   @IBAction func btnChange(_ sender: UIButton) {
      if count == 5 {
         count = 0
      }
      
      lblInfoShow1.text = info[count]
      lblInfoShow2.text = kkm[count]
      count = count + 1
   }
}

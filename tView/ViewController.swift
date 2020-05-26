import UIKit

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let ud = UserDefaults.standard
        
        if ud.bool(forKey: Key.firstLunch) {
            ud.set(false, forKey: Key.firstLunch)
            
            guard let vc = self.storyboard?.instantiateViewController(identifier: "BlueVC") as? BlueVC  else { return }
            self.present(vc, animated: true, completion: nil)
        }
    }
    
}

class BlueVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

struct Key {
    static let firstLunch = "firstLunch"
}

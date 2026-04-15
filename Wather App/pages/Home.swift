#if os(iOS)
import UIKit

class MinhaViewController: UIViewController {
    
    //Quando a tela carrega
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        let customView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        customView.backgroundColor = .green
        view.addSubview(customView)
        
    }
    
    private func setupView(){
        
    }
}
#endif

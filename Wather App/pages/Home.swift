#if os(iOS)
import UIKit

class MinhaViewController: UIViewController {
    
    private lazy var backgroundView: UIImageView = {
        
        let uIImageView = UIImageView(frame: .zero)
        uIImageView.image = UIImage(named: "background")
        uIImageView.contentMode = .scaleAspectFill
        uIImageView.translatesAutoresizingMaskIntoConstraints = false
        
        return uIImageView
    }()
    
    private lazy var headerView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        view.layer.cornerRadius = 20
        
        return view
    }()
    
    private lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.text = "São Paulo"
        label.textAlignment = .center
        label.textColor = UIColor(named: "primary")
        
        return label
    }()
    
    private lazy var tempLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        label.text = "25°C"
        label.textAlignment = .left
        label.textColor = UIColor(named: "primary")
        
        return label
    }()
    
    private lazy var weatherIcon: UIImageView = {
        
        let uIImageView = UIImageView()
        uIImageView.image = UIImage(named: "sunIcon")
        uIImageView.contentMode = .scaleAspectFit
        uIImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        return uIImageView
    }()
    
    //Quando a tela carrega
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    
    private func setupView(){
        view.backgroundColor =  .red

        setHierarchy()
        setContraits()
    }
    
    private func setHierarchy(){
        view.addSubview(backgroundView)
        view.addSubview(headerView)
        
        headerView.addSubview(cityLabel)
        headerView.addSubview(tempLabel)
        headerView.addSubview(weatherIcon)
    }
    
    private func setContraits() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169)
        ])
        
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 15),
            cityLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
            cityLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15),
            cityLabel.heightAnchor.constraint(equalToConstant: 20),
            tempLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 21),
            tempLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 26),
            weatherIcon.centerYAnchor.constraint(equalTo: tempLabel.centerYAnchor),
            weatherIcon.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -26),
            
        ])
     
    }
}
#endif

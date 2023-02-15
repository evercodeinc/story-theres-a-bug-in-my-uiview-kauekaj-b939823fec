import UIKit

final class LoadingView: UIView {
    
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
      
        let view = UIActivityIndicatorView(style: .large)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var loadingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Loading..."
        label.font = UIFont.systemFont(ofSize: 21, weight: .semibold)
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        
        self.backgroundColor = .white
        
        addSubviews()
        configureConstraints()
        activityIndicatorView.startAnimating()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        
        addSubview(activityIndicatorView)
        addSubview(loadingLabel)
    }
    
    func configureConstraints() {
        
        NSLayoutConstraint.activate([
        
            loadingLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loadingLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            activityIndicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            activityIndicatorView.topAnchor.constraint(equalTo: loadingLabel.bottomAnchor, constant: 16)
        ])
    }
}

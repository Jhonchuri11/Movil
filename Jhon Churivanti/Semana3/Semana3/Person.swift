import UIKit

struct Person {
    let name: String
    let lastname: String
    let address: String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let people: [Person] = [
        Person(name: "Pepe", lastname: "Perez", address: "Av mi casa 123"),
        Person(name: "Juan", lastname: "Perez", address: "Av siempre 123"),
        Person(name: "Lucas", lastname: "Zapata", address: "Av tecsup 123")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = people[indexPath.row]
        
        var tableContent = UIListContentConfiguration.cell()
        tableContent.text = "\(person.name) \(person.lastname)"
        tableContent.secondaryText = person.address
        tableContent.image = UIImage(systemName: "person")
        
        cell.contentConfiguration = tableContent
        
        return cell
    }

}
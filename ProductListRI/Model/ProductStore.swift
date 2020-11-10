import UIKit

enum ProductListResult {
    case success(ProductList)
    case failure
}

class ProductStore {
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    

    func fetchData(url: String) {
        if let url = URL(string: url) {
            let task = session.dataTask(with: url) { (data, response, error) in
                

                
                if error != nil {
                    print("\(error.debugDescription)")
                    return
                }
                if let safeData = data {
                    
                    if let myString = String(data: safeData, encoding: .utf8) {
//                        print(myString)
                    }
                    
                    if let j = self.parseJSON(safeData) {
                        // fuck knows
                        print(j.Products[0])
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ productList: Data) -> ProductList? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(ProductList.self, from: productList)
            return decodedData

        } catch {
            return nil
        }
    }

}

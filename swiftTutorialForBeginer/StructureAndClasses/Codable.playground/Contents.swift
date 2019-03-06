import Cocoa

struct qiitaJson: Codable {

    let title: String
    let body: String
    let date: String
    struct User: Codable {
        let id: String  //user name
        let imageUrl: String
        private enum CodingKeys: String, CodingKey {
            case imageUrl = "profile_image_url"
            case id
        }

    }
    let user: User
    private enum CodingKeys: String, CodingKey {
        case title
        case body
        case date = "created_at"
        case user
    }
}


let url: URL = URL(string: "http://qiita.com/api/v2/items")!
let task: URLSessionTask  = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
    do {
        let unwrapData = data!
        let decoder: JSONDecoder = JSONDecoder()
        do {
            let newJson: [qiitaJson] = try decoder.decode([qiitaJson].self, from: unwrapData)
            print(newJson)
            
        } catch {
            print("json convert failed")

        }
    }
    catch {
        print(error)
    }
})
task.resume()




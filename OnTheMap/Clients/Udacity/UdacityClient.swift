//
//  UdacityClient.swift
//  OnTheMap
//
//  Created by Robert DeLaurentis on 7/16/18.
//  Copyright © 2018 Robert DeLaurentis. All rights reserved.
//

import Foundation

class UdacityClient {

    // MARK: Properties
    var sessionID: String?

    // shared instance
    static var sharedInstance: UdacityClient {
        return UdacityClient()
    }

    // MARK: Methods

    func taskForPOSTASesson() {
    }

    func taskForGETPublicUserData() {
    }

    func authenticate(_ name: String, _ password: String, completion: @escaping (_ sessionID: String?) -> Void) {

        var request = URLRequest(url: URL(string: Constants.UdacityAuthentication.BaseURL)!)
        request.httpMethod = Constants.HttpMethod.Post
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = "{\"udacity\": {\"username\": \"\(name)\", \"password\": \"\(password)\"}}".data(using: .utf8)

        let session = URLSession.shared

        let task = session.dataTask(with: request) { (data, response, error) in
            if error != nil { // Handle error…
                return
            }
            // discard leading 5 bytes of response
            let range = Range(5..<data!.count)
            let jsonData = data?.subdata(in: range)

            // parse incoming data and set sessionID
            if let jsonData = jsonData {
                self.sessionID = self.getSessionID(rawJSON: jsonData)
                print(self.sessionID!)
                completion(self.sessionID)
            }
        }
        task.resume()
    }

    func getSessionID(rawJSON: Data) -> String? {

        // JSON Auth Response Struct
        struct UdacityAuthResponse: Codable {
            let account: Account
            let session: Session

            struct Account: Codable {
                let registered: Bool
                let key: String
            }

            struct Session: Codable {
                let id, expiration: String
            }
        }

        let decoder = JSONDecoder()
        let udacityResponse = try? decoder.decode(UdacityAuthResponse.self, from: rawJSON)
        return udacityResponse?.session.id
    }
}


func fetchData() async throws -> Data {
    let (data, response) = try await URLSession.shared.data(from: url)
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        throw URLError(.badServerResponse)
    }
    return data
}

Task { 
    do {
        let data = try await fetchData()
        //Improved Error Handling: Add error handling within data processing
        do {
            // Process data, which might throw an error
            let processedData = try process(data) //Example custom function that processes data and could throw error
            //Handle the processedData
        } catch {
            print("Error processing data: \(error)")
        }
    } catch {
        print("Error fetching data: \(error)")
    }
}

//Example custom function to demonstrate error in data processing
func process(_ data: Data) throws -> String{
    guard let string = String(data: data, encoding: .utf8) else{
        throw NSError(domain: "Data Processing Error", code: 1, userInfo: nil)
    }
    return string
} 
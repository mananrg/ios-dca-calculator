# iOS DCA Calculator

## Description

The `iOS DCA Calculator` is an iOS application designed to help users calculate potential returns via Dollar Cost Averaging (DCA) for various assets. The app allows users to search for companies and fetch their financial data from Alpha Vantage, then calculate and present the DCA results in a user-friendly manner.

## Features

- **Symbol Search**: Search for companies using their names or symbols.
- **Fetch Financial Data**: Retrieves historical financial data for selected companies.
- **DCA Calculations**: Calculate potential returns using Dollar Cost Averaging strategy.
- **User Authentication**: Register and login using Firebase Authentication.
- **Interactive UI**: User-friendly interfaces with animations and interactive elements.

## Installation Instructions

### Prerequisites

- Xcode 12+
- Swift 5+
- CocoaPods

### Steps to Install

1. **Clone the repository:**

    ```sh
    git clone https://github.com/yourusername/ios-dca-calculator.git
    cd ios-dca-calculator
    ```

2. **Install dependencies:**

    ```sh
    pod install
    ```

3. **Open the project:**

    Open `ios-dca-calculator.xcworkspace` in Xcode.

4. **Set up Firebase:**

    - Follow instructions on [Firebase official site](https://firebase.google.com/docs/ios/setup) to set up a Firebase project.
    - Download the `GoogleService-Info.plist` and place it inside your project.

## Usage

### Searching for a Company and Performing DCA Calculation

1. **Search for a Symbol**:
    - On the main screen, use the search bar to enter a company name or symbol.

2. **Select from Search Results**:
    - Click on the desired company from the search results.

3. **Perform DCA Calculation**:
    - Enter the initial investment amount.
    - Enter the monthly Dollar Cost Averaging amount.
    - Select the initial date of investment.
    - View the results for current value, total investment amount, gain, yield, and annual return.

### Authentication

1. **Register**:
    - Click the `Register` button on the login screen.
    - Fill in the email and password fields and submit.

2. **Login**:
    - Enter registered email and password and click `Login`.

## Examples

Example demonstrating how to search for a company and perform DCA calculations:

```swift
// Search for a company symbol
let searchQuery = "Apple"
apiService.fetchSymbolsPublisher(keywords: searchQuery).sink { (completion) in
    switch completion {
    case .failure(let error):
        print("Error: \(error.localizedDescription)")
    case .finished:
        break
    }
} receiveValue: { (searchResults) in
    print(searchResults)
}.store(in: &subscribers)

// Perform DCA calculation
let dcaService = DCAService()
let asset = // initialize with search result
let initialInvestmentAmount = 1000.0
let monthlyDCAAmount = 100.0
let dateIndex = 12
let result = dcaService.calculate(asset: asset, initialInvestmentAmount: initialInvestmentAmount, monthlyDollarCostAveragingAmount: monthlyDCAAmount, initialDateOfInvestmentIndex: dateIndex)
print(result)
```

## Project Structure

- **APIService.swift**: Handles network requests to fetch data from Alpha Vantage API.
- **CalculatorPresenter.swift**: Prepares data for presentation in the UI.
- **DCAService.swift**: Contains business logic to perform DCA calculations.
- **SearchPlaceholderView.swift**: UI component shown during search.
- **AppDelegate.swift**: Application lifecycle management.
- **SceneDelegate.swift**: Scene lifecycle management.
- **UIAnimatable.swift**: Protocol for managing loading animations.
- **AuthService.swift**: Manages Firebase authentication operations.
- **SearchTableViewController.swift**: Main view controller for searching companies.
- **CalculatorTableViewController.swift**: View controller for displaying DCA calculation results.
- **LoginViewController.swift**: View controller for handling user login.
- **SignupViewController.swift**: View controller for handling user signup.

## License

This project is licensed under the MIT License.

---

*Developed by Manan Gandhi on 03/2024.*

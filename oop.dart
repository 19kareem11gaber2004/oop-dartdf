//User Profile Class
class User {
  String name;
  String email;
  int age;

  User(this.name, this.email, this.age);

  void displayInfo() {
    print('Name: $name, Email: $email, Age: $age');
  }
}

void main() {
  final user = User('Alice', 'alice@example.com', 28);
  user.displayInfo(); // Output: Name: Alice, Email: alice@example.com, Age: 28
}

//Bank Account Class
class BankAccount {
  double _balance = 0;

  void deposit(double amount) => _balance += amount;
  void withdraw(double amount) {
    if (amount > _balance) throw Exception('Insufficient funds');
    _balance -= amount;
  }

  double getBalance() => _balance;
}

//Shape Class Hierarchy
abstract class Shape {
  double area();
}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);
  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  final double length, width;
  Rectangle(this.length, this.width);
  @override
  double area() => length * width;
}

//Easy Scenario Solutions
//Employee Management (Encapsulation)
class Employee {
  String name;
  String position;
  double _salary;

  Employee(this.name, this.position, this._salary);

  set salary(double value) {
    if (value < 0) throw Exception('Salary cannot be negative');
    _salary = value;
  }

  double get salary => _salary;
}

//Library Book Tracking
class Book {
  final String title;
  final String author;
  final String isbn;

  Book(this.title, this.author, this.isbn);

  void displayDetails() {
    print('Title: $title, Author: $author, ISBN: $isbn');
  }
}

//E-commerce Product (Named Constructor)
class Product {
  String name;
  double price;
  String category;

  Product(this.name, this.price, this.category);

  Product.discounted(
    String name,
    double originalPrice,
    String category,
    double discount,
  ) : this(name, originalPrice * (1 - discount), category);
}

//Weather App (Getters/Setters)
class WeatherData {
  double _temperature;
  double humidity;
  double windSpeed;

  WeatherData(this._temperature, this.humidity, this.windSpeed);

  set temperature(double value) {
    if (value < -273.15) throw Exception('Invalid temperature');
    _temperature = value;
  }

  double get temperature => _temperature;
}

//AI Chatbot
class AIChatbot {
  String name;
  String language;
  double responseTime;

  AIChatbot(this.name, this.language, this.responseTime);

  String generateResponse(String userInput) => 'Response to: $userInput';
}

//Medium Scenario Solutions
//Messaging App (Abstract Class)
abstract class Message {
  void send();
}

class TextMessage extends Message {
  @override
  void send() => print('Text message sent');
}

class ImageMessage extends Message {
  @override
  void send() => print('Image message sent');
}

//AI-Based Personal Trainer (Polymorphism)
class Workout {
  void generateRoutine() => print('Generic routine');
}

class StrengthTraining extends Workout {
  @override
  void generateRoutine() => print('AI-generated strength routine');
}

//Resume Scanner (Factory Constructor)
class ResumeAnalyzer {
  final String jobField;

  factory ResumeAnalyzer(String jobField) {
    switch (jobField) {
      case 'SoftwareEngineer':
        return SoftwareEngineerAnalyzer();
      default:
        throw Exception('Unsupported job field');
    }
  }

  ResumeAnalyzer._(this.jobField);
}

class SoftwareEngineerAnalyzer extends ResumeAnalyzer {
  SoftwareEngineerAnalyzer() : super._('SoftwareEngineer');
}

//Fraud Detection (Exception Handling)
class FraudDetectedException implements Exception {
  final String message;
  FraudDetectedException(this.message);
}

class TransactionValidator {
  void validate() {
    // AI check logic
    throw FraudDetectedException('Suspicious activity detected');
  }
}

//Hard Scenario Solutions (Optional)
//Recommendation System
class RecommendationEngine {
  static final RecommendationEngine _instance =
      RecommendationEngine._internal();

  factory RecommendationEngine() => _instance;

  RecommendationEngine._internal();

  void suggest() => print('AI-driven recommendation');
}

//Sentiment Analysis (Mixin)
mixin SentimentAnalyzer {
  String analyzeSentiment(String text) => 'Positive';
}

class CommentAnalyzer with SentimentAnalyzer {}

//Fraud Detection (Dependency Injection)
class PaymentFraudDetector {
  final dynamic aiModel;

  PaymentFraudDetector(this.aiModel);

  void detect() => aiModel.analyze();
}

class NeuralNetwork {
  void analyze() => print('Analyzing with neural network');
}

// main for easy level
/*void main() {
  // User Profile
  final user = User('Alice', 'alice@example.com', 28);
  user.displayInfo();

  // Bank Account
  final account = BankAccount();
  account.deposit(1000);
  print('Balance: ${account.getBalance()}');

  // Shapes
  final circle = Circle(5);
  print('Circle Area: ${circle.area()}');
}
*/
//main for Medium level
/*
void main() {
  // Messaging App
  final textMsg = TextMessage();
  textMsg.send(); // Output: "Text message sent"

  // AI Personal Trainer
  final strengthRoutine = StrengthTraining();
  strengthRoutine.generateRoutine(); // Output: "AI-generated strength routine"

  // Resume Scanner
  final analyzer = ResumeAnalyzer('SoftwareEngineer');
  print(analyzer.jobField); // Output: "SoftwareEngineer"

  // Fraud Detection
  final validator = TransactionValidator();
  try {
    validator.validate();
  } catch (e) {
    print(e); // Output: "FraudDetectedException: Suspicious activity detected"
  }
}
//main for hard level 

*/
/*
void main() {
  // Recommendation System (Singleton)
  final engine = RecommendationEngine();
  engine.suggest(); // Output: "AI-driven recommendation"

  // Sentiment Analysis (Mixin)
  final commentAnalyzer = CommentAnalyzer();
  print(commentAnalyzer.analyzeSentiment("Great post!")); // Output: "Positive"

  // Payment Fraud Detection (Dependency Injection)
  final neuralDetector = PaymentFraudDetector(NeuralNetwork());
  neuralDetector.detect(); // Output: "Analyzing with neural network"
}
*/

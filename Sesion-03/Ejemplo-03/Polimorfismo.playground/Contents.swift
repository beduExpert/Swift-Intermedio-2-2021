import UIKit

enum Genre {
  case male
  case female
  case other
}

enum EducationLevel {
  case bachelor
  case master
  case Phd
}

enum Sport {
  case soccer
  case futbol
}

class Person {
  
  var name: String
  var age: Int
  var genre: Genre
  var height: Float?
  var weight: Float?
  
  init(name: String, age: Int, genre: Genre) {
    self.name = name
    self.age = age
    self.genre = genre
  }
  
  //Methods
  func eat() {
    print(#function)
  }
  
  func talk(){
    print(#function)
  }
  
  func run() {
    print(#function)
  }
}


class Student: Person {
  var school: String?
  var educationLevel: EducationLevel?
  var academicAverage: Float?
  
  init(name: String, age: Int, genre: Genre, school: String, educationLevel: EducationLevel){
    self.school = school
    self.educationLevel = educationLevel
    super.init(name: name, age: age, genre: genre)
  }
  
  func goParty() {
    print(#function)
  }
}

class Player: Student {
  var sport: Sport?
  var number: Int?
  var team: String?

  func canPlay() {
     print(#function)
  }
}

let ric = Person(name: "Ric", age: 28, genre: .male)
let student = Student(name: "Ricardo", age: 28, genre: .male, school: "Bedu", educationLevel: .bachelor)

let cast = student as Person
cast.weight

let downcast = ric as? Student
downcast?.academicAverage


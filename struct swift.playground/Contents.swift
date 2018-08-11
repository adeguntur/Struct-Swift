//: Playground - noun: a place where people can play

import Foundation

struct Student{
    //properties
    var studentID:String
    var name:String
    var classOf:String
    
    //method
    func study(topic:String){
        print("\(name) learning about \(topic)")
    }
}
var firstStudent: Student = Student (studentID: "132392910", name: "Ade", classOf: "2010")
print(firstStudent.name)
firstStudent.study(topic: "Object Oriented Programming")

class Lecturer {
    // properties
    var lecturerID:String
    var name:String
    var topic:String
    var students : [Student] = []
    
    init(lecturerID:String, name:String,topic:String) {
         self.lecturerID = lecturerID
         self.name = name
         self.topic = topic
    }
    
    func addStudent(newStudent: Student) {
    students.append(newStudent)
    }
}
var firstLecturer: Lecturer = Lecturer(lecturerID: "D4562", name: "Ade", topic: "Programming")
firstLecturer.name
firstLecturer.addStudent(newStudent: firstStudent)
print(firstLecturer.students[0].name)
firstLecturer.addStudent(newStudent: Student(studentID:"William",name:"1232",classOf:"2089"))
firstLecturer.students.count

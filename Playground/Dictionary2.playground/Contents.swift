import UIKit

var Journal: [String: [String:UInt]] // Name Date Score

Journal = ["Усов":["01-01-2017":5,"05-01-2017":5],
           "Бойко":["01-01-2017":3,"05-01-2017":4],
           "Монро":["01-01-2017":2,"05-01-2017":3]]

var ResOfStudents:[String:Double] = [:]

var countOfAllMarks = 0
var sumOFAllMarks: Double = 0

for student in Journal {
    var sumOfMarksOfStudent = 0
    for lesson in student.1 {
        sumOfMarksOfStudent += Int(lesson.1)
        countOfAllMarks += 1
    }
    
    var resOfOneStudent = Double(sumOfMarksOfStudent) / Double(student.1.count)
    sumOFAllMarks += Double(resOfOneStudent)
    ResOfStudents[student.0] = resOfOneStudent
    print("Средний бал \(student.0) - \(resOfOneStudent)")
}

print("\nСредний бал группы - \(Float(sumOFAllMarks/Double(Journal.count)))")

for student in ResOfStudents{
    print("\(student.0) - \(student.1)")
}


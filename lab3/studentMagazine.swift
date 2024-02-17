//
//  studentMagazine.swift
//  lab3
//
//  Created by Канапия Базарбаев on 17.02.2024.
//

import Foundation

struct Student {
    var Name: String
    var Surname: String
    var AverageGrade: Double
}

class studentMagazine {
    var students: [Student] = []
    
    func addStudent(Name: String, Surname: String, AverageGrade: Double) {
        let newStudent = Student(Name: Name, Surname: Surname, AverageGrade: AverageGrade)
        students.append(newStudent)
    }
    
    func removeStudent(Name: String, Surname: String) {
        students = students.filter { $0.Name != Name || $0.Surname != Surname }
    }
    
    func displayAllStudents() {
        for student in students {
            print("Name: \(student.Name); Surname: \(student.Surname); AVG: \(student.AverageGrade)")
        }
    }
    
    func sortSstudentByAVG() {
        students.sort { $0.AverageGrade > $1.AverageGrade }
    }
    
    func calculateAVG() -> Double {
        let totalGrade = students.reduce(0.0) { $0 + $1.AverageGrade }
        return totalGrade / Double(students.count)
    }
    
    func findHighAVG() -> Student?{
        return students.max { $0.AverageGrade > $1.AverageGrade }
    }
}

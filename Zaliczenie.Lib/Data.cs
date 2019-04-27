using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zaliczenie.Lib
{
    public class Data
    {
        public static List<Student> Students { get; set; }
        public static List<Result> Results { get; set; }
        public static List<Subject> Subjects { get; set; }

        static Data() {
            Students = new List<Student>();
            Students.Add(new Student() { GivenName = "Jan", Surname = "Kowalski", PESEL = "80121200383" });
            Students.Add(new Student() { GivenName = "Zenon", Surname = "Nowak", PESEL = "90101267890" });
            Students.Add(new Student() { GivenName = "Anna", Surname = "Smolińska", PESEL = "85010123929" });

            Subjects = new List<Subject>();
            Subjects.Add(new Subject() { Name = "Podstawy LINQ", ECTS = 7 });
            Subjects.Add(new Subject() { Name = "Wprowadzenie do VS i C#", ECTS = 5 });
            Subjects.Add(new Subject() { Name = "Programowanie aplikacji samodzielnych", ECTS = 8 });
            Subjects.Add(new Subject() { Name = "Zarządzanie projektami", ECTS = 4 });
            Subjects.Add(new Subject() { Name = "Podstawy C#", ECTS = 6 });

            Results = new List<Result>();
            Results.Add(new Result() { Student = Students[0], Subject = Subjects[1], grade = 5 });
            Results.Add(new Result() { Student = Students[0], Subject = Subjects[2], grade = 4 });
            Results.Add(new Result() { Student = Students[0], Subject = Subjects[3], grade = 3 });

            Results.Add(new Result() { Student = Students[1], Subject = Subjects[2], grade = 5 });
            Results.Add(new Result() { Student = Students[1], Subject = Subjects[3], grade = 4 });
            Results.Add(new Result() { Student = Students[1], Subject = Subjects[4], grade = 3 });

            Results.Add(new Result() { Student = Students[2], Subject = Subjects[3], grade = 5 });
            Results.Add(new Result() { Student = Students[2], Subject = Subjects[4], grade = 4 });
            Results.Add(new Result() { Student = Students[2], Subject = Subjects[0], grade = 3 });

        }
    }
}

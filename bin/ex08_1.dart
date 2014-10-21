import 'package:ex08/lib_8_1.dart';

void printListAssociations(List toPrint){
  Iterator i=toPrint.iterator;
  while(i.moveNext()){
    print ('name: ${i.current["name"]}\ndescription: ${i.current["description"]}\nmembers:');
    printListMembers(i.current['members']);
  }
}

void printListMembers(List toPrint){
  Iterator i=toPrint.iterator;
  while(i.moveNext())
        print(i.current);
}


void Q1(){
  var associations = [
                        {"name": "IS", "description": "Information Systems", "members": 
                          [
                            {"firstName": "Dzenan", "lastName": "Ridjanovic", "email": "dr@gmail.com"},
                            {"firstName": "Robert", "lastName": "Nelson", "email": "rn@gmail.com"},
                            {"firstName": "Marc", "lastName": "Velez", "email": "mv@gmail.com"}
                          ]
                        },
                        {"name": "CS", "description": "Computer Science",  "members": 
                          [
                           {"firstName": "David", "lastName": "Curtis", "email": "dc@gmail.com"},
                           {"firstName": "Catalina", "lastName": "Vial", "email": "cv@gmail.com"},
                           {"firstName": "Catalina", "lastName": "Richelieu", "email": "cr@gmail.com"},
                           {"firstName": "David", "lastName": "Boucher", "email": "dv@gmail.com"}
                          ]
                        }
                     ];
  var sortedList=sortMembers(associations,"CS");
  var membersWithLetter=searchMemebersWithLetter(associations,'V');
  
  print("Question 1:\nOriginal List:");
  printListAssociations(associations);
  print("Question 1a:");
  print('Sorted name List for CS association:');
  printListMembers(sortedList);
  print('Question 1b:\nList of members with lastName starting by V:');
  printListMembers(membersWithLetter);
  
}

void main() {
  Q1();
}

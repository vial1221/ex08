import 'package:ex08/lib_8_1.dart';
import 'package:ex08/association_member.dart';

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

void Q2(){
  
  var associationsList=new Associations();
  
  associationsList.add(new Association());
  associationsList.add(new Association());
  associationsList.add(new Association());
  
  associationsList.internalList[0].name='IS';
  associationsList.internalList[0].description='Information Systems';
  associationsList.internalList[0].memberships.add(new Membership(associationsList.internalList[0],'Information Systems', new Member( "Dzenan",  "Ridjanovic", "dr@gmail.com")));
  associationsList.internalList[0].memberships.add(new Membership(associationsList.internalList[0],'Information Systems', new Member( "Catalina",  "Vial", "cv@gmail.com")));
  associationsList.internalList[0].memberships.add(new Membership(associationsList.internalList[0],'Information Systems', new Member( "Marc",  "Velez", "mv@gmail.com")));
  associationsList.internalList[0].memberships.internalList[0].member.memberships.add(associationsList.internalList[0].memberships.internalList[0]);
  associationsList.internalList[0].memberships.internalList[1].member.memberships.add(associationsList.internalList[0].memberships.internalList[1]);
  associationsList.internalList[0].memberships.internalList[2].member.memberships.add(associationsList.internalList[0].memberships.internalList[2]);
  
  associationsList.internalList[1].name='CS';
  associationsList.internalList[1].description='Computer Science';
  associationsList.internalList[1].memberships.add(new Membership(associationsList.internalList[1],'Computer Science', new Member( "Jean",  "Beaudoin", "jb@gmail.com")));
  associationsList.internalList[1].memberships.add(new Membership(associationsList.internalList[1],'Computer Science', new Member( "Marc",  "Velez", "mv@gmail.com")));
  associationsList.internalList[1].memberships.add(new Membership(associationsList.internalList[1],'Computer Science', new Member( "Catalina",  "vial", "cv@gmail.com")));
  associationsList.internalList[1].memberships.internalList[0].member.memberships.add(associationsList.internalList[1].memberships.internalList[0]);
  associationsList.internalList[1].memberships.internalList[1].member.memberships.add(associationsList.internalList[1].memberships.internalList[1]);
  associationsList.internalList[1].memberships.internalList[2].member.memberships.add(associationsList.internalList[1].memberships.internalList[2]);
  
  associationsList.internalList[2].name='ES';
  associationsList.internalList[2].description='Electronic Science';
  associationsList.internalList[2].memberships.add(new Membership(associationsList.internalList[2],'Computer Science', new Member( "Alejandro",  "Florez", "af@gmail.com"))); 
  associationsList.internalList[2].memberships.add(new Membership(associationsList.internalList[2],'Computer Science', new Member( "Olivier",  "Burgeois", "ob@gmail.com")));
  associationsList.internalList[2].memberships.internalList[0].member.memberships.add(associationsList.internalList[2].memberships.internalList[0]);
  associationsList.internalList[2].memberships.internalList[1].member.memberships.add(associationsList.internalList[2].memberships.internalList[1]);
  
  print('\nQuestion 2:\nAssociation List using classes: ');
  
  print(associationsList);
  
  //associationsList.internalList[0].memberships.internalList.sort();
 
  print('IS Association memberships sorted:\n');
  print(associationsList.internalList[0]);
}

// Exercice 8.2
void main() {
  Q1();
  
  Q2();
}


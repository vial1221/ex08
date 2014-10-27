library lib_8_1;

//Exercice 8.1
// A member is a map with the following structure  ={"First name": value, "Last name": value, "email": value }
// An association is map  where the value of the key = {"name": value, "description":value, "members": values[ ] } 
// Where "members" key value is a list [ ] of members (map)

List sortMembers (List associationList,String associationToSort){
  var valueToReturn= new List();  
  Iterator i=associationList.iterator;
  while(i.moveNext()){
    if(i.current["name"]==associationToSort){
      i.current["members"].sort((a,b){ return compareAB(a,b);});
      valueToReturn= i.current["members"];
    }
  }
  return valueToReturn;
}
// Function that compares two maps by fisrt name and then by last name used to sort the list of names
int compareAB ( a, b){
  if (a["lastName"]==b["lastName"])
    return a["firstName"].compareTo(b["firstName"]);
  else
    return a["lastName"].compareTo(b["lastName"]);
  
}
// Search all members on all associations whom last name starts by a given letter
List searchMemebersWithLetter(List associationList,String startsLetter ){
  var valueToReturn= new List();  
   Iterator i=associationList.iterator;               // used to iterates each association
   Iterator k=null;
   while(i.moveNext()){                               
       k= i.current['members'].iterator;              // used to iterates each member within one association
       while(k.moveNext()){
         if (k.current['lastName'][0]==startsLetter)  // if member lastName is equal to the given letter
           valueToReturn.add(k.current);              // member is added to the list to be returned
       }
     }
   return valueToReturn;
}






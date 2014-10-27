

part of association_members;

class Association extends ConceptEntity<Association> {
  String _name;
  String description;
  Memberships memberships = new Memberships(); // internal relationship

  String get name => _name;
  set name(String name) {
    _name = name;
    if (code == null) {
      code = name;
    }
  }

  Association newEntity() => new Association();

  String toString() {                             // Modified to print all associations 
    
    String toReturn;
    toReturn= '  {\n   name: ${name}\n   description: ${description}\n   Memberships:\n';
    
    Iterator i=memberships.iterator;          
    while(i.moveNext()){
       if(toReturn!=null)
        toReturn = '${toReturn}\n${i.current.toString()}\n';
       else
        toReturn = '${i.current.toString()}';
    }
    toReturn = '${toReturn}\n  }';
    return toReturn;
  }
}

class Associations extends ConceptEntities<Association> {
  Associations newEntities() => new Associations();
  Association newEntity() => new Association();
  
  String toString() {                       // Function Added to generate a string with all the Associations
   Iterator i=super.iterator;
   String toReturn;
   while(i.moveNext()){
     if(toReturn!=null)
        toReturn = '${toReturn}\n${i.current.toString()}\n';
     else
       toReturn = '${i.current.toString()}';
   }
   return toReturn; 
   
  }
  
  
  
  
  
}
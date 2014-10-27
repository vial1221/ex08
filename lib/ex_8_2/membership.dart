
part of association_members;

class Membership extends ConceptEntity<Membership> {
  Association _association;
  Member _member;
  String description;
  
  Membership([this._association,this.description,this._member]);    // Added constructor with parametres as list to allow o to 3 parametres
  
  Association get association => _association;
  set association(Association association) {
    _association = association;
    if (code == null && member != null) {
      code = '${association.code}-${member.code}';
    }
  }

  Member get member => _member;
  set member(Member member) {
    _member = member;
    if (code == null && association != null) {
      code = '${association.code}-${member.code}';
    }
  }

  Membership newEntity() => new Membership();

  String toString() {
    return '    {\n'
           '      member.firstName: ${member.firstName}\n'
           '      member.lastName: ${member.lastName}\n'
           '      member.email: ${member.email}\n'
           '      association.name: ${association.name}\n'
           '      description: ${description}\n'    
           '    }\n';
  }
}

class Memberships extends ConceptEntities<Membership> {
  Memberships newEntities() => new Memberships();
  Membership newEntity() => new Membership();
  
  String toString() {
    String toReturn;
        Iterator i=super.internalList.iterator;          
        while(i.moveNext()){
          if(toReturn!=null)
            toReturn = '${toReturn}\n${i.current.toString()}';
          else
            toReturn = '${i.current.toString()}';
         }
        toReturn = '${toReturn}\n  }';
        return toReturn;       
                         

    }
  }

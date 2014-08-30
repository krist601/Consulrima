package consulrima

class Allocation {

    Date allocationDate
    String size
    Type allocationType
    String otherType
    int amount
    
    static belongsTo = [employee: Employee]
    enum Type
    {
        Camisa,Pantalon,Zapatos, Otros
    }
    static constraints = {
        otherType nullable: true
    }
}

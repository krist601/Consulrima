package consulrima

class Load {
    int amount
    Date date

    static belongsTo = [employee: Employee]  
    static constraints = {
    }
}

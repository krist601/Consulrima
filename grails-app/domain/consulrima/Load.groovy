package consulrima

class Load {
    float amount
    Date date

    static belongsTo = [employee: Employee]  
    static constraints = {
    }
}

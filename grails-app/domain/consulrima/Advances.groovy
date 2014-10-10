package consulrima

class Advances {
    float amount
    Date date

    static belongsTo = [employee: Employee]
    static constraints = {
    }
}

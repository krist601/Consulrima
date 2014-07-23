package consulrima

class Advances {
    int amount
    Date date

    static belongsTo = [employee: Employee]
    static constraints = {
    }
}

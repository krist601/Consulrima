package consulrima

class Phone {
    String areaCode
    String phoneNumber

    static belongsTo = [employee: Employee]
    static constraints = {
    }
}

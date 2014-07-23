package consulrima

class Phone {
    int areaCode
    int phoneNumber
    int type

    static belongsTo = [employee: Employee]
    static constraints = {
    }
}

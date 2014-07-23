package consulrima

class Antiquity {
    Date admissionDate
    Date dischargeDate
    int salary

    static belongsTo = [employee: Employee]
    static constraints = {
    }
}

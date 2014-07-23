package consulrima

class Antiquity {
    Date admissionDate
    Date dischargeDate
    int salary
    String Observation

    static belongsTo = [employee: Employee]
    static constraints = {
    }
}

package lasmejores

class Empresa {

    
    Integer idEmpresa
    String nombreEmpresa
    String url
    String ubicacion
    static belongsTo = [sector:Sector]
    static hasMany = [reviews: Review]
    static constraints = {
    }
}

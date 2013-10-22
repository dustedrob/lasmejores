package lasmejores

class Review {

    Integer idReview
    String titulo//////////Titulo del review
    String ubicacion////////Lugar donde se trabajo
    String puesto/////////Nombre del puesto que tenia
    String pros////////Ventajas de trabajar ahi
    String cons/////////Desventajas de trabajar ahi
    boolean recomendaria///Recomendarias esta empresa a alguien mas?
    boolean trabajoActual////Es tu trabajo actual
    Integer futuro////////Calificacion sobre el futuro de la empresa
    Integer rating///////Rating del review
    Integer cultura///////Calificacion sobre la cultura de la empresa
    Integer salario///////Calificacion sobre el salario que ofrecen
    Integer balance////////Calificacion sobre el balance de vida y carrera
    Integer administracion/////////Calificacion sobre los administradores de la empresa
    Integer oportunidades////////Calificacion sobre oportunidades de  crecimiento
    Integer prestaciones//////////Calificacion sobre las prestaciones que ofrece la emprea
    boolean trabajoRemoto///////////Ofrecian trabajo remoto
    Integer salarioPuesto///////////El salario que percibia para dicho puesto
    String consejoAdministracion//////Que consejo le daria a los administradores de la empresa
    Integer formaContratacion////////Bajo que forma estaba contratado. Falta definir opciones
    
    static belongsTo = [empresa:Empresa]
    static constraints = {
    }
}

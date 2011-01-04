package javacup11

/**
 * 
 * @author: ecamacho
 * javahispano 2010
 * 
 */
enum Status {
      CREATED("CRT", 'CREATED'),
      HAS_TACTIC("HST", "HAS_TACTIC"),
      REJECTED("REJ", "Rejected"),
      ACCEPTED("ACP", "Acepted")

      final String id
      final String value

      Status(String id, String value) { this.id = id; this.value = value }

}
package org.javahispano.javacup

class Country {

    String name

    static constraints = {
      name blank: false
    }

    static mapping = {
      cache true
    }
}

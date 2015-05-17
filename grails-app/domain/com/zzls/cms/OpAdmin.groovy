package com.zzls.cms

class OpAdmin {

    String userName
    String password
    String realName

    Date dateCreated
    Date lastUpdated

    static constraints = {
        userName nullable: false, unique: true, size: 4..20
        password nullable: false, password: true
        realName nullable: false, size: 2..10

        dateCreated()
        lastUpdated()
    }

    String toString() {
        "${userName}(${realName})"
    }
}

package com.zzls.cms

class Notice {

    String title
    String content
    String category
    int sortIndex

    Date dateCreated
    Date lastUpdated

    static constraints = {
        title nullable: false
        content nullable: false
        category inList: ["gonggao", "dongtai"]
        sortIndex()

        dateCreated()
        lastUpdated()
    }
}

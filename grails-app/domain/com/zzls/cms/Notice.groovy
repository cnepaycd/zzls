package com.zzls.cms

class Notice {

    String title
    // alter table notice alter column content text
    String content
    String category
    int sortIndex = 0
    String picture
    String publisher

    Date dateCreated
    Date lastUpdated

    static constraints = {
        title nullable: false
        content nullable: false, maxSize: 100000
        category inList: ["gonggao", "dongtai"]
        sortIndex()
        picture nullable: true
        publisher nullable: true

        dateCreated()
        lastUpdated()
    }
}

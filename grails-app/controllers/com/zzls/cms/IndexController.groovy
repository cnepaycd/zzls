package com.zzls.cms

import static org.springframework.http.HttpStatus.NOT_FOUND

class IndexController {

    def index() {
        Notice gonggaoTop = Notice.findByCategoryAndSortIndex("gonggao", 1)
        def gonggaoList = Notice.listOrderByDateCreated(order: "desc")
        if ( ! gonggaoTop ) {
            gonggaoList.remove(gonggaoTop)
        }
        if (gonggaoList.size() > 4) {
            gonggaoList = gonggaoList.subList(0, 3)
        }

        [gonggaoTop : gonggaoTop, gonggaoList : gonggaoList]
    }

    def news(Notice notice) {
        if (notice == null) {
            notFound()
            return
        }

        notice.content = notice.content.replaceAll("\n", "<br>")

        [notice : notice]
    }

    def admin() {

    }

    def login() {}

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'notice.label', default: 'Notice'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

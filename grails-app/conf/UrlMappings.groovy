class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/index")
		"/"(controller: "billDetails", action: "create")
        "500"(view:'/error')
	}
}

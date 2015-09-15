class BootStrap {

    def init = { servletContext ->

//        Author author=new Author(name: 'Vijay')
//        if(!Author.count()){
//            author.save(flush: true)
//        }
//        Book book=new Book(author:author,title: 'Angular Starting',ISBN: '123-456-789',price: 58,releasedDate: new Date(2015-5-30))
//        if (!Book.count()){
//            book.save(flush: true)
//        }
//        if(!Review.count())
//        {
//            Review review=new Review(book:book,user: 'Vijay',message: 'Checking the data',rate: 5).save(flush: true)
//        }
//
//        //Adding the Role
//        if(!Role.count()){
//            def adminRole=Role.findOrSaveWhere(authority: 'ROLE_ADMIN').save(flush: true)
//            def userRole=Role.findOrSaveWhere(authority: 'ROLE_USER').save(flush: true)
//        }
//
//        //Adding the User
//        if(!User.count()){
//            def adminUser=User.findOrSaveWhere(username: 'vshukla684@gmail.com',password: "12345",firstName: "Vijay",lastName:  "Shukla").save(flush: true)
//            def user=User.findOrSaveWhere(username: 'vshukla@gmail.com',password: "12345",firstName: "Vijay",lastName:  "Shukla").save(flush:true)
//        }
//
//        //Addiing the User Role
//        def adminUser=User.findByUsername('vshukla684@gmail.com')
//        def adminRole=Role.findByAuthority('ROLE_ADMIN')
//        if(!adminUser.authorities.contains(adminRole))
//        {
//            UserRole.create(adminUser,adminRole,true)
//        }
//
//        def user=User.findByUsername('vshukla@gmail.com')
//        def userRole=Role.findByAuthority('ROLE_USER')
//        if(!user.authorities.contains(userRole))
//        {
//            UserRole.create(user,userRole,true)
//        }

    }
    def destroy = {
    }
}

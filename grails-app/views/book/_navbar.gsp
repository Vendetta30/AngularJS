<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.gsp">BooksStore</a>
        </div>

        <div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">AboutUs</a></li>
                <li><a href="#">ContactUs</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Services<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Services1</a></li>
                        <li><a href="#">Services2</a></li>
                        <li><a href="#">Services3</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span
                        class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a data-toggle="modal" data-target="#myModal" href=""><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
            <g:render template="loginModal"/>
        </div>
    </div>
</nav>

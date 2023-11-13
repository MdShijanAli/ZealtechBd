<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                <div class="sb-sidenav-menu-heading">Dashboard</div>
                <a class="nav-link" href="{{ route('admin') }}">
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Dashboard
                </a>
                <div class="sb-sidenav-menu-heading">All Components</div>
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Administator
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="{{ route('company.edit') }}">Company Profile</a>
                        <a class="nav-link" href="{{ route('about.edit') }}">Company About</a>
                        <a class="nav-link" href="{{ route('register.create') }}">Add New user</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                    <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                    Components
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link collapsed" href="{{ route('category.index') }}">
                            Category Add 
                        </a>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollaps" aria-expanded="false" aria-controls="pagesCollaps">
                            Services 
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="pagesCollaps" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="{{ route('services.create') }}">Add service</a>
                                <a class="nav-link" href="{{ route('services.index') }}">service List</a>
                            </nav>
                        </div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                            Team 
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="{{ route('teams.create') }}">Create Team</a>
                                <a class="nav-link" href="{{ route('teams.index') }}">Team List</a>
                            </nav>
                        </div>

                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesTestimonial" aria-expanded="false" aria-controls="pagesTestimonial">
                            Testimonial 
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="pagesTestimonial" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="{{ route('testimonial.create') }}">Create Testimonial</a>
                                <a class="nav-link" href="{{ route('testimonial.index') }}">Testimonial List</a>
                            </nav>
                        </div>
                        <a class="nav-link collapsed" href="{{ route('client.index') }}">
                            Client Add 
                        </a>
                        <a class="nav-link collapsed" href="{{ route('galleries.index') }}">
                            Gallery Add 
                        </a>
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesNewpage" aria-expanded="false" aria-controls="pagesNewpage">
                            New Page 
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="pagesNewpage" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="{{ route('pages.create') }}">Create newPage</a>
                                <a class="nav-link" href="{{ route('pages.index') }}">Page List</a>
                            </nav>
                        </div>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#portfolio" aria-expanded="false" aria-controls="portfolio">
                    <div class="sb-nav-link-icon"><i class="fas fa-briefcase"></i></div>
                    Portfolio 
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="portfolio" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="{{ route('portfolio.index') }}">Portfolio List</a>
                        <a class="nav-link" href="{{ route('portfolio.create') }}">Portfolio Create</a>
                    </nav>
                </div>
                <a class="nav-link" href="{{ route('contact.list') }}">
                    <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                    Contact List
                </a>
                <a class="nav-link" href="{{ route('subscriber.list') }}">
                    <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                    Subscriber List
                </a>
                <a class="nav-link" href="{{ route('logout') }}">
                    <div class="sb-nav-link-icon"><i class="fa fa-power-off"></i></div>
                    Sign Out 
                </a>
            </div>
        </div>
    </nav>
</div>
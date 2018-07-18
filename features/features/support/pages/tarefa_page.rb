require_relative 'sections'

class Tarefapage < SitePrism::Page
    section :nav, Navbar, '#navbar'

    element :titulo, '.header-title h3'

end


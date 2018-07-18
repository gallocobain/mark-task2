require_relative 'sections'

class PerfilPage < SitePrism::Page
    set_url '/user_settings/profile'

    section :nav, Navbar, '#navbar'


end
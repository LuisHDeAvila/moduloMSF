# pensado para crear un SUPER-METASPLOIT, integrandole mi coleccion personal que eh reunido de ~100,000 sploits documentados

require 'msf/core'
class Metasploit3 < Msf::Exploit::Remote
    include Exploit::Remote::Tcp
    Rank = Excellent
    def initialize(info = {})
        super(update_info(
        info,
        'Name' => 'Template MSF'
        'Description' => 'Prueba para MSF'
        'License' => MSF_LICENSE,
        'Reference' => ['http://github.com/luishdeavila'],
        'Platform' => 'Linux'
        'Targets' => [['Universal', {}]],
        'DefaultTarget' => 0,
        'DisclosureDate' => '2021'
        )
        )
        register_options(
        [
        Opt::RPORT(22)
        OptString.new('USER', [true, 'Valid Username', 'admin'])
        OptString.new('PASS', [true, 'Valid password', 'password'])
        ],self.class)
        
        register_advanced_options(
        [
            OptInt.
        new('THREADDS', [true, 'Numero de hilos al mismo tiempo',5])
        ],self.class)
    end
    
def exploit
    print_status('iniciando...')
    print_warning('Esto solo es una plantilla')
    print_good('Gracias por confiar en Luis Hector')
    print_error('Hasta luego')
end
end
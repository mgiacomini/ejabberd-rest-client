require_relative 'lib/ejabberd'

ejabberd_client = Ejabberd::Rest::Client.new({
                                                 jid: 'admin@im.juster.com.br',
                                                 password: 'ToEm69ungMjcAe',
                                                 ejabberd_api: 'http://im.jusster.com.br:5280'
                                             })

p ejabberd_client.is_running?
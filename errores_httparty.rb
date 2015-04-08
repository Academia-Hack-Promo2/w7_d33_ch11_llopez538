require 'httparty'

class Servicio
	include HTTParty
	base_uri 'http://hackapi.jgab.net/api/users'
	
	def lista
		self.class.get('')
	end
	
	def mostrar(username)
		self.class.get('/'+username)
	end
	
	def agregar(user)
		options = {body: user}
		self.class.post('',options)
	end

	def editar(username, user)
		options = {body: user}
		self.class.put('/'+username)		
	end

	def eliminar(username)
		self.class.delete('/'+username)
	end
end

servicio = Servicio.new

	servicio.editar("@masasss",{
	status: "active",
	gender:  'male',
	email: 'masasss.the.end@gmail.com',
	phone: '04165578871',
	indentity: '20049538',
	username: '@masasss',
	fullname: 'Leonard Lopez',
	address: 'Av. Fuerzas Armadas'
	

	});

puts servicio.lista
class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


    belongs_to :collector

    has_many :debts
    has_many :payments

	def self.search(query)
  		# where(:title, query) -> This would return an exact match of the query
  		where("cnpj like ?", "%#{query}%") 
  	end


	def to_param
    	"#{id} #{nome}".parameterize
  	end

end

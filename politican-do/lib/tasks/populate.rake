namespace :populate do

  task deputies: :environment do
    @deputies = HTTParty.get('https://dadosabertos.camara.leg.br/api/v2/deputados/', query: { siglaUf: "MS" },
      :headers =>{'Content-Type' => 'application/json'})

    @deputies = @deputies["dados"]

    @deputies.each do |d|
      Deputy.create(full_name: d["nome"], uf: d["siglaUf"], political_party: d["siglaPartido"], url_photo: d["urlFoto"],
      camara_id: d["id"])
    end 
  end
end
10.times do
    Avaliacaoob.create({
        comentario: Faker::Book.title,
        nota: Faker::Number.number(10),
        cpf: Faker::Book.title,
        nomeobra: Faker::Lorem.sentence,
        orgao: Faker::Lorem.sentence
    })
  end

  10.times do
    Seavaliacao.create({
        comentario: Faker::Book.title,
        nota: Faker::Number.number(10),
        cpf: Faker::Book.title,
        nomeservico: Faker::Lorem.sentence,
        orgao: Faker::Lorem.sentence
    })
  end

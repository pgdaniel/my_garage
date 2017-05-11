csv_text = File.read('db/resources/image_links.csv')
csv = CSV.parse(csv_text, :headers => false)

csv.each do |row|
  generic_image = GenericImage.new

  response = HTTParty.get(row[0])
  orig_name = URI(row[0]).path.split('/')[-1]

  File.open('tmp/' + orig_name, "wb") do |f|
    f.write(response.body)
    generic_image.image = f
  end

  generic_image.save
end

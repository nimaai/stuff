def rename_files

  product_name = "Dexter-S6E"
  counter = 1

  filenames = Dir.glob("*.avi")

  filenames.each do |filename|
    File.rename(filename, produce_name + id.to_s + ".avi")
    counter += 1
  end

end

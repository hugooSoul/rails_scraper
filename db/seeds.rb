# Document.destroy_all

scraper = Scraper.new
documents = scraper.scraper("https://www.poderjudicialvirtual.com/df-floriberto-garcia-ramirez--c-director-del-registro")
Document.create_from_collection(documents)
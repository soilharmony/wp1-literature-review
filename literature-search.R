# from Hans (email 02/07/2026)

library(httr2)

crossref <- "https://api.crossref.org/works"

req <- request(crossref) |>
  httr2::req_url_query(
    # Query searches across all metadata
    query = "pedotransfer transfer function soil Europe",
    
    # Target journals with 'soil' in the title (backticks required for the hyphen)
    `query.container-title` = "soil",
    
    # Filter for journal articles that have an abstract available
    filter = "type:journal-article,has-abstract:true",
    
    # Fetch 100 results per request (max is 1000)
    rows = 100,
    
    # Enter the Polite Pool for faster API access
    mailto = "your@email.com"
  )

# Perform the request
result <- req_perform(req)

# Extract and parse the JSON body
body <- resp_body_json(result)

# Navigate to the items (the actual paper records are in the 'message$items' list)
items <- body$message$items

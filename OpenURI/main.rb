# Using retry with OpenURI
# The following snippet of code attempts to download pages from Wikipedia. The third entry, xj3490, refers to a non-existent
# page and is guaranteed to fail:

require 'open-uri'
remote_base_url = "http://en.wikipedia.org/wiki"

[1900, 1910, 'xj3490', 2000].each do |yr|
 
 retries = 3
 
 begin
   url = "#{remote_base_url}/#{yr}"
   puts "Getting page #{url}"
   rpage = open(url)
 rescue StandardError=>e
   puts "\tError: #{e}"
   if retries > 0
       puts "\tTrying #{retries} more times"
       retries -= 1
       sleep 1
       retry
   else
       puts "\t\tCan't get #{yr}, so moving on"
   end    
 else
   puts "\tGot page for #{yr}"
 ensure   
   puts "Ensure branch; sleeping"
   sleep 1

 end
end

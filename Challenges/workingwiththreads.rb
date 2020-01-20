require 'net/http'

pages = %w( www.delphi.uz 
            www.muminjon.com
            www.elitod.delphi.uz
            )

threads = []

for page in pages
    threads << Thread.new(page) { |myPage|
        h = Net::HTTP.new(myPage, 80)
        puts "Fetching: #{myPage}"
        resp, data = h.get('/', nil)
        puts "Got #{myPage}:  #{resp.message}"
    }
end

threads.each { |aThread| aThread.join }

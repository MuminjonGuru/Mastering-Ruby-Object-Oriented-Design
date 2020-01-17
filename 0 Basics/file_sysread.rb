muminjonFile = File.new("input.guru", "r")
if muminjonFile
    content = muminjonFile.sysread(20)
    puts content
else
    puts "Deep shit! The file is not under control"
end 

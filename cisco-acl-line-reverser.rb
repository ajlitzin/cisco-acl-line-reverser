lines = IO.readlines("testfile.in")

newlines = lines.map { |line| line.gsub(/ \(hitcnt.*$| \b0[xX][0-9a-fA-F]+\b$/,"") }
newlines.delete_if { |line| line.start_with?("  access-list") }.reverse!
newlines.map! { |line| line.gsub(/^/,"no ") }

puts newlines

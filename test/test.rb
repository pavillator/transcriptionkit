require 'transcriptionkit'

def welcome
	args = Hash[ ARGV.flat_map{|s| s.scan(/--?([^=\s]+)(?:=(\S+))?/) } ]
    input = ARGV[0]
    puts input
    language = args["system"]
    input = args["output"]
    TranscriptionKit.convert("#{language}.yaml", file_name, output)
    welcome()
end

welcome()
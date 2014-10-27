require 'optparse'

@options={}
@options[:number_hits]=100

def parse_options_from_cmd_line
    OptionParser.new do |opts|
        opts.banner = 
        "Usage: generate_input.rb [-n]

        Utilize this script to generate an external_hit.input file. If the number of HITs to be created 
        in the external_hit.input is not specified, by default, this script will generate an 
        external_hit.input with 100 total HITs.
        "

        opts.on('-n', '--number NUMBER', 'Number of HITs') do |number|
            @options[:number_hits]=number.to_i
        end
    end.parse!
end

def create_external_hits_input_file
    File.open 'external_hit.input', 'w' do |buffer|
       buffer.puts 'urls'
       (1..@options[:number_hits]).each do |number|
           buffer.puts number
       end
    end
end

parse_options_from_cmd_line
puts "Creating external_hit.input file with #{@options[:number_hits]} HITs"
create_external_hits_input_file

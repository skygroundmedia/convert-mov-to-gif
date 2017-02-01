APP_ROOT = File.dirname(__FILE__)

class Converter
  # Default path to ffmpeg installed by homebrew
  @@ffmpeg   = File.join('/', 'usr', 'local', 'bin', 'ffmpeg')
  # Default path to gifsicle installed by homebrew
  @@gifsicle = File.join('/', 'usr', 'local', 'bin', 'gifsicle')
  # Tell ffmpeg the max-width and max-height
  @@max_size = ["1280x1024", "800x640", "640x512", "600x480", "480x384", "300x240"][2]
  @@pixel_format = "rgb8"
  # Tell ffmpeg to reduce the frame rate from to 30
  @@frames = 30

  # Tell gifsicle to delay 30ms between each gif (in ms)
  @@delay = 3
  # Requests that gifsicle use the slowest/most file-size optimization
  @@optimize = 3
  
  def initialize(input, output)
    shell_command = %{#{@@ffmpeg} -i #{input} -s #{@@max_size} -pix_fmt #{@@pixel_format} -r #{@@frames} -f gif - | #{@@gifsicle} --optimize=#{@@optimize} --delay=#{@@delay} > #{output}}
    # puts command
    
    %x[ #{shell_command} ]
  end  
end

# Be careful not to use spa ces.
input  = File.join(APP_ROOT, 'media', 'Circle.mov')
output = File.join(APP_ROOT, 'media', 'Circle.gif')

Converter.new(input,output)

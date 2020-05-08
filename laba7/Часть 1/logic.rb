# frozen_string_literal: false

# SortingClass from file
class FilesClass

  def initialize(name, text)
    @lab7 = name
    @text = text
    write_files_f
  end

  def write_files_f
    File.open(@lab7, 'w+') do |file|
      file.write @text
    end
  end

  def creat_p_file
    arr = []
    arr2 = []
    File.readlines(@lab7).each do |line|
      arr << line.strip.split(" ").map(&:to_i)
      arr2 << line.strip.split(" ").map(&:to_i)
    end
    arr[0].select! { |num| num < 0 }
    arr2[0].select! { |num| num > 0 }
    int = 0
    int2 = 0
    @res = []
    @res2 = []
    arr[0].count.times do
      @res << arr2[0][1*int..int+4]+arr[0][1*int..int+4] if arr[0][1*int..int+4] != nil || arr[0][1*int..int+4] == []
      @res2 << arr2[0][1*int..int+19]+arr[0][1*int..int+19] if arr[0][1*int2..int2+19] != nil || arr[0][1*int2..int2+19] == []
      int+=5
      int2+=20
    end
    File.open("P.txt", 'w+') do |file|
      file.write "#{@res.flatten.join(' ')}\n#{ @res2.flatten.take(40).join(' ')}"
    end
  end
 def read_p_file
   str = ''
   File.readlines("P.txt").each do |line|
     str += "#{line.strip}\n"
   end
   str
 end
  end


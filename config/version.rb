module DockerRails
  class Application
    def version
      '0.1.5'
    end

    def build_time
      @build_time ||= File.read('BUILD_TIME').lines.first.chomp.to_datetime rescue nil
    end
  end
end

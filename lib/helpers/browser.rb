class Helpers::Browser
  def self.resize_window
    resize_chrome_window = %Q{osascript -e "tell application \\\"Google Chrome\\\" to set bounds of window 1 to {1,1,350,540}"}
    `#{resize_chrome_window}`
  end
end


class Helpers::Browser
  def self.resize_window
    resize_chrome_window = %Q{osascript -e "tell application \\\"Google Chrome\\\" to set bounds of window 1 to {1,1,430,540}"}
    `#{resize_chrome_window}`
  end

  def self.full_size_window
    resize_chrome_window_full_size = %Q{osascript -e "tell application \\\"Google Chrome\\\" to set bounds of window 1 to {1,1,1300,900}"}
    `#{resize_chrome_window_full_size}`
  end
end


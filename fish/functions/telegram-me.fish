function telegram-me -d "Send a message to a telegram chat"
  # https://gist.github.com/alsolovyev/ea4ff418dcea6e80a1b899aa2871cd75
  # Check if telegram token is not set
  if test -z "$TELEGRAM_BOT_TOKEN"
    echo (set_color red)"Error: Telegram bot token not provided. Set TELEGRAM_BOT_TOKEN environment variable."
    echo "       For more information visit: $(set_color -u blue)https://t.me/BotFather"(set_color normal)
    return 1
  end

  # Check if telegram chat ID is not set
  if test -z "$TELEGRAM_CHAT_ID"
    echo (set_color red)"Error: Telegram chat ID not provided. Set TELEGRAM_CHAT_ID environment variable."
    echo "       Press 'y' to send a request to update endpoint for the correct chat ID." (set_color normal)
    echo

    read -n 1 -P "Press 'y' to send request, or any other key to cancel: " choice

    if test "$choice" = "y"
      curl -s "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/getUpdates"
      return

    else
      echo "Operation canceled."
      return
    end
  end

  # Check if a message or file path is provided
  if test -z "$argv[1]"
      echo (set_color red)"Error: Need to provide a message."(set_color normal)
      return 1
  end

  # Check if the provided argument is not a file
  if not test -f "$argv[1]"
      curl -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
          -F chat_id=$TELEGRAM_CHAT_ID \
          -F text="$argv" \
          -F disable_notification=true \
          -s

      return
  end
end

# frozen_string_literal: true

module Ruboty
  module SlackRTM
    module EmojiChanged
      CHANNEL = ENV['SLACK_EMOJI_CHANGED_CHANNEL'] || '#emoji'
      IGNORE_REMOVED = ENV['SLACK_EMOJI_IGNORE_REMOVED']

      def on_emoji_changed(data)
        case data['subtype']
        when 'add'
          color = 'good'
          emoji_name = data['name']
          message = +"A new emoji is added :#{emoji_name}: `:#{emoji_name}:`"
          value = data['value']
          if value.start_with?('alias:')
            origin_emoji = value.sub(/\Aalias:/, '')
            message << " (alias of `:#{origin_emoji}:`)"
          end
        when 'remove'
          return if IGNORE_REMOVED
          color = 'danger'
          message = +"Removed emoji: #{data['names'].join(', ')}"
        end
        if message
          attachments = [
            {
              fallback: message,
              text: message,
              color: color,
            },
          ]
          channel = CHANNEL
          channel = resolve_channel_id(channel[1..-1]) if channel.start_with?('#')
          client.chat_postMessage(
            username: robot.name,
            channel: channel,
            attachments: attachments.to_json,
          )
        end
      end
    end

    if ::Ruboty::Adapters.const_defined?(:SlackRTM)
      ::Ruboty::Adapters::SlackRTM.include EmojiChanged
    end
  end
end

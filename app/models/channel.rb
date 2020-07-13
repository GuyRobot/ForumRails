class Channel < ApplicationRecord
    has_many :discussions
    has_many :users, through: :discussions
    resourcify

    extend Friendly_Id
    friendly_id :channel, use: [:slugged, :finders]

    def should_generate_new_friendly_id?
        channel_changed?
    end

end

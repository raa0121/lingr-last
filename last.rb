# -*- coding : utf8 -*-

require 'json'

module LingrLast
  class Member
    def initialize(res)
      @@username = res["username"]
      @@name = res["name"]
      @@icon_url = res["icon_url"]
      @@timestamp = res["timestamp"]
      @@is_owner = res["is_owner"]
      @@presence = res["is_online"]
      @@pokeable = res["pokeable"]
    end

  end
  
  class Bot
    def initialize(res)
      @@id = res["id"]
      @@name = res["name"]
      @@icon_url = res["icon_url"]
      @@status = res["status"]
    end
  
  class Room
    def initialize(res)
      @@id = res["id"]
      @@name = res["name"]
      @@blurb = res["blurb"]
      @@public = res["is_public"]
      @@backlog = []
      @@members = []
      @@bots = []

      res["messages"].map{|m|
        @@backlog.push(Message.new m)
      }

      res["roster"].select{|m,b|
        r["members"]
        r["bots"]
      }.map{|m,b|
        @@members.push(Member.new m)
        @@bots.push(Bot.new b)
      }
    end
  end

  class Message

  end

  class APIError

  end

  class Connection

  end

end

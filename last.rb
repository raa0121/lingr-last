# -*- coding : utf-8 -*-

$LOAD_PATH << File.dirname(__FILE__)

require 'lingr'
require 'highline'

id = HighLine.new.ask('ID: ')
pw = HighLine.new.ask('Password: '){|q| q.echo = '*'}
last = Lingr::Connection.new(id, pw, 30)


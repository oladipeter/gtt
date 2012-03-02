# encoding: utf-8
class Question < ActiveRecord::Base
  validates :email, :uniqueness => { :message => "Ezzel az Email címmel már adtak le kérdőívet!" }
end

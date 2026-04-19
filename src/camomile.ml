open CamomileLib

module Private = struct
  module AvlTree = AvlTree
  module Bitsvect = Bitsvect
  module Bytesvect = Bytesvect
  module Byte_labeled_dag = Byte_labeled_dag
  module Charmap = Charmap
  module Database = Database
  module Hangul = Hangul
  module IMap = IMap
  module ISet = ISet
  module StringPrep_data = StringPrep_data
  module Tbl31 = Tbl31
  module UReStrLexer = UReStrLexer
  module UReStrParser = UReStrParser
  module UReStrParserType = UReStrParserType
  module Unidata = Unidata
  module Unimap = Unimap
  module XArray = XArray
end

module Config = struct
  include Config
  module Default = ConfigImpl
end

module DefaultConfig = Config.Default
include Functor
include Make (Config.Default)

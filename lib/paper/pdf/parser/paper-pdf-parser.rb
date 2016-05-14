# coding: utf-8

require 'thor'
require 'pathname'
lib = Pathname.new(__FILE__).dirname.join().expand_path
$:.unshift lib.to_s
require 'P3Util'
require 'json'


module PaperPdfParser
  class CLI < Thor
    include P3Util
    class_option 'work_dir', type: :string, aliases: 'Working dir', desc: 'Set working dir(default: /tmp)', default: '/tmp'
    class_option 'dir', type: :boolean, aliases: 'Working in dir', desc: 'work to make dir or not(default: true)', default: true

    desc 'path', 'Extract references from local file'
    def path(pathName)
      puts P3Util.fetchFromPath(pathName, options[:work_dir], options[:use_dir]).to_json
    end

    desc 'url', 'Extract references from pdf URL'
    def url(pdfUrlName)
      puts P3Util.fetchFromPdfUrl(pdfUrlName, options[:work_dir], options[:use_dir]).to_json
    end
  end
end

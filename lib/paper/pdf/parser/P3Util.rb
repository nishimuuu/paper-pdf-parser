$:.unshift Pathname.new(__FILE__).dirname.join().expand_path.to_s
require 'P3'

module P3Util
  def self.fetchFromPath(pathName, work_dir, use_dir)
    return P3.fetchFromPdfPath(pathName, work_dir, use_dir)
  end

  def self.fetchFromPdfUrl(pdfUrl, work_dir, use_dir)
    return P3.fetchFromPdfUrl(pdfUrl, work_dir, use_dir)
  end
end

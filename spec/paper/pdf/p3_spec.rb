require 'spec_helper'
require 'P3'
require 'pathname'

describe 'test util of path, directory, id' do 
  let(:testdir) { Pathname.new(__FILE__).dirname.expand_path.to_s }
  let(:id) { 'hoge' }
  let(:pdfurl) { 'https://arxiv.org/pdf/1605.00495v1.pdf' }
  let(:format) {
    {
      
    }
  }
  context 'test job' do 
    it 'test job id' do
      require 'digest/sha2' 
      require 'time'
      t = Time.now.strftime('%F %H:%M:%S:%N')
      sha = Digest::SHA256.hexdigest t
      expect(sha != P3.makeId).to eq true
    end
  end

  context 'test directory' do
    it 'test make/remove directory' do 
      targetdir = "#{testdir}/#{id}"
      P3.makeDir(id, testdir)
      expect(File.exists?(targetdir)).to eq true
      P3.removeDir(id, testdir)
      expect(File.exists?(targetdir)).to eq false
    end

    it 'test make file' do
      [true, false, nil].each do |use_dir|
        case use_dir
        when true
          expect(P3.makeFile(id, testdir, use_dir)).to eq "#{testdir}/#{id}/output.pdf"
        when false 
          expect(P3.makeFile(id, testdir, use_dir)).to eq "#{testdir}/#{id}-output.pdf"
        when nil
          expect(P3.makeFile(id, testdir, use_dir)).to eq "#{testdir}/#{id}/output.pdf"
        end
      end
    end

    it 'test k2pdf file' do
      [true, false, nil].each do |use_dir|
        case use_dir
        when true
          expect(P3.getK2Pdf(id, testdir, use_dir)).to eq "#{testdir}/#{id}/output_k2opt.pdf"
        when false
          expect(P3.getK2Pdf(id, testdir, use_dir)).to eq "#{testdir}/#{id}-output_k2opt.pdf"
        when nil 
          expect(P3.getK2Pdf(id, testdir, use_dir)).to eq "#{testdir}/#{id}/output_k2opt.pdf"
        end
      end
    end

    it 'test remove file' do
      target_files = []
      %w(output.pdf output_k2opt.pdf testFile).each do |file|
        filepath = "#{testdir}/#{id}-#{file}"
        target_files << filepath
        File.open(filepath, "w").close() 
      end
      
      target_files.each do |file|
        expect(File.exists?(file)).to eq true
      end
      
      P3.removeFile(id, testdir)
      removetarget = ''

      target_files.each do |file|
        if file.index('output').nil?
          removetarget = file
          expect(File.exists?(file)).to eq true
        else
          expect(File.exists?(file)).to eq false
        end
      end
      File.delete(removetarget)
    end

    it 'test fetch pdf file' do
      filepath = "#{testdir}-test.pdf"
      P3.fetchPdfFile(pdfurl, filepath)
      expect(file.exists?(filepath)).to eq true
      File.delete(filepath)
    end
  end
end

describe 'test convert pdf file' do
  context 'test convert process' do
    it 'test convertsinglecolpdf ' do 

    end

    it 'test fetch reference' do 

    end

    it 'fetch from pdf path' do 

    end

    it 'fetch from pdf url' do 

    end

    it 'fetch parse' do
      
    end
  end
end

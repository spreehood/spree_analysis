require 'spree_core'
require 'spree_extension'
require 'spree_analysis/engine'
require 'spree_analysis/version'
require 'spree_analysis/configuration'

module SpreeAnalysis
  class ReportConfig
    def self.configure
      yield configuration if block_given?
    end

    def self.configuration
      @config ||= SpreeAnalysis::Configuration.new
    end
  end
end

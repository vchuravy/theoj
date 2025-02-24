require_relative "journals_data"

module Theoj
  class Journal
    attr_accessor :data
    attr_accessor :doi_prefix
    attr_accessor :url
    attr_accessor :name
    attr_accessor :alias
    attr_accessor :launch_date

    def initialize(custom_data = {})
      set_data custom_data
    end

    def current_year
      data[:current_year] || Time.new.year
    end

    def current_volume
      data[:current_volume] || (Time.new.year - (launch_year - 1))
    end

    def current_issue
      data[:current_issue] || (1 + ((Time.new.year * 12 + Time.new.month) - (launch_year * 12 + launch_month)))
    end

    def paper_id_from_issue(review_issue_id)
      id = "%05d" % review_issue_id
      "#{@alias}.#{id}"
    end

    def paper_doi_for_id(paper_id)
      "#@doi_prefix/#{paper_id}"
    end

    def reviews_repository_url(issue_id=nil)
      reviews_url = "https://github.com/#{data[:reviews_repository]}"
      if issue_id
        reviews_url += "/issues/" + issue_id.to_s
      end
      reviews_url
    end

    private

    def set_data(custom_data)
      @data = default_data.merge(custom_data)
      @doi_prefix = data[:doi_prefix]
      @url = data[:url]
      @name = data[:name]
      @alias = data[:alias]
      @launch_date = data[:launch_date]
    end

    def default_data
      Theoj::JOURNALS_DATA[:joss]
    end

    def parsed_launch_date
      @parsed_launch_date ||= Time.parse(data[:launch_date])
    end

    def launch_year
      parsed_launch_date.year
    end

    def launch_month
      parsed_launch_date.month
    end
  end
end

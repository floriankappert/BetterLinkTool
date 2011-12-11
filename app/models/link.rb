class Link < ActiveRecord::Base
  belongs_to :keyword
  
  #validates_format_of :url, :with => /^((http|https):\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+).[a-z]{2,5}(:[0-9]{1,5})?(\/.)?$/ix
  validates_format_of :url, :with => /^(http:\/\/www.|https:\/\/www.|www.|http:\/\/.)[^.]+[.]+([d][e]|[a][t]|[e][s]|[u][s]|[c][o][.][u][k]|[c][o][m]|[o][r][g]|[n][e][t])/
end

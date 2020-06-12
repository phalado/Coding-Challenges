# Given a non-empty array of integers, return the k most frequent elements.
# https://leetcode.com/problems/top-k-frequent-elements/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  key = []
  val = []

  nums.each do |v|
    ind = key.find_index(v)
    unless ind
      key << v
      val << 1
    else
      val[ind] += 1
    end
  end

  max_ind = []
  k.times do
    ind = val.find_index(val.max)
    max_ind << key[ind]
    key.delete_at(ind)
    val.delete_at(ind)
  end
  max_ind
end
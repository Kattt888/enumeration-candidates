# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    candidate[:id]
  end
  
  def experienced?(candidate)
    candidate[:experience] >= 2
  end

  def experienced?(candidate)
    candidate[:experience] >= 2
  end
  
  def has_enough_github_points?(candidate)
    candidate[:github_points] >= 100
  end
  
  def knows_ruby_or_python?(candidate)
    (candidate[:languages] & ["Ruby", "Python"]).any?
  end
  
  def applied_recently?(candidate)
    candidate[:applied_at] > 15.days.ago
  end
  
  def old_enough?(candidate)
    candidate[:age] >= 18
  end
  
  def qualified_candidates(candidates)
    candidates.select do |candidate|
      experienced?(candidate) &&
      has_enough_github_points?(candidate) &&
      knows_ruby_or_python?(candidate) &&
      applied_recently?(candidate) &&
      old_enough?(candidate)
    end
  end
  
 def ordered_by_qualifications(candidates)
  candidates.sort_by { |candidate| [-candidate[:experience], -candidate[:github_points]] }
 end
  
  # More methods will go below
# frozen_string_literal: true

module SimpleCov
  module Combine
    #
    # Handle combining two coverage results for same file
    #
    # Should be called through `SimpleCov.combine`.
    module FilesCombiner
    module_function

      #
      # Combines the results for 2 coverages of a file.
      #
      # @return [Hash]
      #
      def combine(coverage_a, coverage_b)
        {
          :lines => Combine.combine(LinesCombiner, coverage_a[:lines], coverage_b[:lines]),
          :branches => Combine.combine(BranchesCombiner, coverage_a[:branches], coverage_b[:branches])
        }
      end
    end
  end
end

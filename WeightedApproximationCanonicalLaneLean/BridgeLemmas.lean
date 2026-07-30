import WeightedApproximationCanonicalLaneLean.WeightedApproximationAdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

def WeightedBridgeClosed (A : AdmissibleWeightedClass) : Prop :=
  A.completeness ∧ A.separability ∧ A.weightGrowth

theorem bridge_from_admissible_weighted_class (A : AdmissibleWeightedClass) : WeightedBridgeClosed A :=
  by
    refine And.intro ?_ (And.intro ?_ ?_)
    · exact A.completeness
    · exact A.separability
    · exact A.weightGrowth

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse
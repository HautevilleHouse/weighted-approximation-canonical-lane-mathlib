import WeightedApproximationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

def ConstrainedWeightedApproximationClosure (A : AdmissibleWeightedClass) : Prop :=
  WeightedBridgeClosed A ∧ WeightedGateClosed A

theorem constrained_weighted_approximation_endgame (A : AdmissibleWeightedClass) : ConstrainedWeightedApproximationClosure A :=
  by
    exact And.intro (bridge_from_admissible_weighted_class A) (gate_from_admissible_weighted_class A)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse
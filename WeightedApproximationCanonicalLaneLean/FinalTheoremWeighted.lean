import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.BridgeLemmasWeighted
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.AdmissibleClassWeighted

/-!
# Final Theorem: Weighted Approximation Closure

This module establishes the ConstrainedWeightedClosure for the target domain.
-/

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

def ConstrainedWeightedClosure (A : AdmissibleClassWeighted) : Prop :=
  bridgeClosedWeighted A ∧ gateClosedWeighted A

theorem constrained_weighted_endgame (A : AdmissibleClassWeighted) :
    ConstrainedWeightedClosure A := by
  exact And.intro (bridge_from_admissible_class_weighted A) (gate_from_admissible_class_weighted A)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse

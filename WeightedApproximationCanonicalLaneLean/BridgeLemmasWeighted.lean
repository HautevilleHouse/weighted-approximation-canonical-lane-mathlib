import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.AdmissibleClassWeighted

/-!
# Bridge Lemmas for Weighted Approximation

This module provides bridge and gate closure lemmas.
-/

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

def bridgeClosedWeighted (A : AdmissibleClassWeighted) : Prop :=
  A.object.closureCondition

theorem bridge_from_admissible_class_weighted (A : AdmissibleClassWeighted) :
    bridgeClosedWeighted A := by
  exact A.object.closureCondition

def gateClosedWeighted (A : AdmissibleClassWeighted) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class_weighted (A : AdmissibleClassWeighted) :
    gateClosedWeighted A := by
  exact A.gateWitness

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.WeightedApproximationTheory

/-!
# Admissible Class for Weighted Approximation

This module defines the admissible class structure for Weighted Approximation.
-/

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightedAdmittedObject where
  weight : WeightFunction
  weightedSupNormFinite : Set (WeightedContinuousFunction weight)
  closureCondition : Prop

structure AdmissibleClassWeighted where
  object : WeightedAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosureWeighted (A : AdmissibleClassWeighted) : Prop :=
  A.object.closureCondition ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse

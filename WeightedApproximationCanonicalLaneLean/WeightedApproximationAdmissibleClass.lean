import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightFunction (X : Type) where
  carrier : X → ℝ
  positive : ∀ x, carrier x > 0

definition WeightedSpace (X : Type) (w : WeightFunction X) : Set (X → ℝ) := { f | ∀ x, |f x| * w.carrier x < ∞ }

structure AdmissibleWeightedClass where
  space : Type
  weight : WeightFunction space
  completeness : Prop
  separability : Prop
  weightGrowth : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def AdmissibleWeightedClosure (A : AdmissibleWeightedClass) : Prop :=
  WeightedBridgeClosed A ∧ WeightedGateClosed A

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse
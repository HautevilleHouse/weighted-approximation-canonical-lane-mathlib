import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightedApproximationObject where
  weightFunction : Type u
  approximationSpace : Type v
  norm : approximationSpace → ℝ
  weight : approximationSpace → ℝ
  boundedWeight : Prop
  approximationProperty : Prop
  conclusion : approximationProperty

structure AdmissibleClass where
  object : WeightedApproximationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.approximationProperty ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse

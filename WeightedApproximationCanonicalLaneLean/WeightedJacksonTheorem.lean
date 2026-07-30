import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.WeightedBernsteinInequalities

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightedJacksonPackage {W : WeightFunctionPackage}
    {S : WeightedSobolevPackage W} {B : WeightedBernsteinPackage W S} where
  smoothnessClass : Prop
  jacksonInequality : Prop
  approximationOrder : ℝ

structure WeightedJacksonEvidence {W : WeightFunctionPackage}
    {S : WeightedSobolevPackage W} {B : WeightedBernsteinPackage W S}
    (J : WeightedJacksonPackage W S B) where
  jacksonInequalityClosed : J.jacksonInequality

def WeightedJacksonClosed {W : WeightFunctionPackage}
    {S : WeightedSobolevPackage W} {B : WeightedBernsteinPackage W S}
    (J : WeightedJacksonPackage W S B) : Prop :=
  J.jacksonInequality

theorem weighted_jackson_closed_from_evidence {W : WeightFunctionPackage}
    {S : WeightedSobolevPackage W} {B : WeightedBernsteinPackage W S}
    (J : WeightedJacksonPackage W S B) (E : WeightedJacksonEvidence J) :
    WeightedJacksonClosed J :=
  E.jacksonInequalityClosed

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse
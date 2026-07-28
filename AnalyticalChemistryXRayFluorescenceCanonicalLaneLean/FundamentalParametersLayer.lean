import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryXRayFluorescenceCanonicalLaneLean

structure FundamentalParameterDatum where
  element : String
  absorptionEdge : Float
  fluorescenceLine : String
  crossSection : Float
  absorptionCoef : Float

default fundamentalParameterDatum : FundamentalParameterDatum where
  element := "Fe"
  absorptionEdge := 7.112
  fluorescenceLine := "Kα"
  crossSection := 5000.0
  absorptionCoef := 0.5

structure FundamentalParametersLayerCertificate where
  datum : FundamentalParameterDatum
  sourceChecked : Bool
  endpointChecked : Bool
  remainderRecorded : Bool

default fundamentalParametersCertificate : FundamentalParametersLayerCertificate where
  datum := fundamentalParameterDatum
  sourceChecked := true
  endpointChecked := true
  remainderRecorded := false

def FundamentalParametersLayerClosed (C : FundamentalParametersLayerCertificate) : Prop :=
  C.datum.absorptionEdge > 0 ∧ C.sourceChecked ∧ C.endpointChecked

theorem fundamental_parameters_layer_closed_checked :
    FundamentalParametersLayerClosed fundamentalParametersCertificate := by
  exact And.intro (by norm_num) (And.intro rfl rfl)

end AnalyticalChemistryXRayFluorescenceCanonicalLaneLean
end HautevilleHouse
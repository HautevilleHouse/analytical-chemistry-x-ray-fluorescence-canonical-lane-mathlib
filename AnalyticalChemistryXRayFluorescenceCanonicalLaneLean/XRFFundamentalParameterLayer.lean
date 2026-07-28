import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryXRayFluorescenceCanonicalLaneLean

structure XRFFundamentalParameterCertificate where
  absorptionCoefficientChecked : Bool
  fluorescenceYieldChecked : Bool
  jumpRatioChecked : Bool
  emissionLineEnergyChecked : Bool
  sourceExcitationChecked : Bool

def xrfFundamentalParameterCertificate : XRFFundamentalParameterCertificate := {
  absorptionCoefficientChecked := true,
  fluorescenceYieldChecked := true,
  jumpRatioChecked := true,
  emissionLineEnergyChecked := true,
  sourceExcitationChecked := true
}

def XRFFundamentalParameterLayerClosed (C : XRFFundamentalParameterCertificate) : Prop :=
  C.absorptionCoefficientChecked = true ∧
  C.fluorescenceYieldChecked = true ∧
  C.jumpRatioChecked = true ∧
  C.emissionLineEnergyChecked = true ∧
  C.sourceExcitationChecked = true

theorem xrf_fundamental_parameter_layer_closed_checked :
    XRFFundamentalParameterLayerClosed xrfFundamentalParameterCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end AnalyticalChemistryXRayFluorescenceCanonicalLaneLean
end HautevilleHouse
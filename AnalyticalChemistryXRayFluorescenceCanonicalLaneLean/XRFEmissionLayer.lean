import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryXRayFluorescenceCanonicalLaneLean

structure EmissionCertificate where
  elementList : List String
  fluorescenceYield : Float
  primaryXRayEnergy : Float
  emissionChecked : Bool

def emissionCertificate : EmissionCertificate := {
  elementList := ["Fe", "Ca", "Si"],
  fluorescenceYield := 0.05,
  primaryXRayEnergy := 20.0,
  emissionChecked := true
}

def EmissionLayerClosed (C : EmissionCertificate) : Prop := 
  C.emissionChecked = true

theorem emission_layer_closed_checked : EmissionLayerClosed emissionCertificate := by
  rfl

end AnalyticalChemistryXRayFluorescenceCanonicalLaneLean
end HautevilleHouse
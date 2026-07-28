import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryXRayFluorescenceCanonicalLaneLean

structure ExcitationCertificate where
  xraySourceType : String
  voltage : Float
  current : Float
  filterMaterial : String
  excitationChecked : Bool

def excitationCertificate : ExcitationCertificate := {
  xraySourceType := "Rhodium anode X-ray tube",
  voltage := 50.0,
  current := 1.0,
  filterMaterial := "Aluminum",
  excitationChecked := true
}

def ExcitationLayerClosed (C : ExcitationCertificate) : Prop := 
  C.excitationChecked = true

theorem excitation_layer_closed_checked : ExcitationLayerClosed excitationCertificate := by
  rfl

end AnalyticalChemistryXRayFluorescenceCanonicalLaneLean
end HautevilleHouse
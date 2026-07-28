import AnalyticalChemistryXRayFluorescenceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryXRayFluorescenceCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (calib : XRFCalibration), calib.energy = A.object.object.energy

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact A.object.sourceKeyChecked
  · exact A.object.theoremObjectChecked
  · exact A.object.operatorModelChecked
  · exact A.object.spectralPersistenceBridgeChecked
  · exact A.object.sourceBoundaryLedgerChecked
  · exact A.object.classicalRemainderCarried

end AnalyticalChemistryXRayFluorescenceCanonicalLaneLean
end HautevilleHouse
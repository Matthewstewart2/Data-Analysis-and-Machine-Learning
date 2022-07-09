#include "SteppingAction.h"


SteppingAction::SteppingAction( EventAction* eventAction )
  : G4UserSteppingAction() // Run the constructor of the parent class
{
  m_eventAction = eventAction;
}

SteppingAction::~SteppingAction()
{
}

// Every track step, collect info about the particle
void SteppingAction::UserSteppingAction( const G4Step* step )
{
  m_eventAction->RecordParticleData( step );
}

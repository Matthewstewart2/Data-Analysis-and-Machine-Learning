#include "ActionInitialization.h"
#include "GeneratorAction.h"
#include "RunAction.h"
#include "EventAction.h"
#include "SteppingAction.h"

ActionInitialization::ActionInitialization() : G4VUserActionInitialization()
{
}

ActionInitialization::~ActionInitialization()
{
}

// Four actions to set up
// - generating particles
// - controlling the whole run
// - controlling a single event
// - reading data from each step
void ActionInitialization::Build() const
{
  this->SetUserAction( new GeneratorAction() );
  this->SetUserAction( new RunAction() );

  // Keep the event action pointer to use below
  EventAction* myEvent = new EventAction();
  this->SetUserAction( myEvent );

  // Stepping action needs a pointer to the event action too
  this->SetUserAction( new SteppingAction( myEvent ) );
}

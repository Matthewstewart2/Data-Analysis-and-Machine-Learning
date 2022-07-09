#include "ActionInitialization.h"
#include "GeneratorAction.h"
#include "RunAction.h"

ActionInitialization::ActionInitialization() : G4VUserActionInitialization()
{
}

ActionInitialization::~ActionInitialization()
{
}

// Two actions to set up now
// - generating particles
// - controlling the whole run
void ActionInitialization::Build() const
{
  this->SetUserAction( new GeneratorAction() );
  this->SetUserAction( new RunAction() );
}

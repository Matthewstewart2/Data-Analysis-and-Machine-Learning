s1739768 DAML CP9 README

1. "Show how the energy distribution histogram changes for electrons
and neutrons of the same initial energy."

	I've included a pdf called "Energy_Distributions" within the
	part 1 folder with the two histograms. On the first page is
	for 20 neutrons with beam energy 300 MeV and on the second
	is the same but with electrons. We see electrons don't travel
	as far in to the detector and deposit their energy in the
	first few layers while the neutrons travel further as
	suggested in the exercise sheet. All of this could be done
	within the GUI so no C++ edits were made for this part.

2. "Write a Python program to calibrate your energy data. Plot a 1D
histogram of the calibrated energy as shown, and find the resolution
by taking the standard deviation of this data."

	In the part 1 folder there is also a Jupyter notebook called
	CP9_Calibration.ipynb which is in the same folder as
	the outputs. It should explain my approach. I used 500 events
	firing 300 MeV electrons. 

3. "Make a 2D histogram showing how your calibrated energy varies with
beam energy. Describe what beam energy values you used."

	The GUI was turned off and I added a /run/beamOn 5000 command
	to run.mac. This was 500 events for each beam energy starting
	at 100 MeV and increasing to 1900 MeV in increments of 200 MeV
	done by editing GeneratorAction.cpp The 2D histogram is in the
	same Jupyter notebook as the previous part.

4. "Count the number of positrons produced by photon conversion in an event."

	CP9terminalprintout.png is a screenshot of the printout to the
	terminal after firing one 300 MeV electron. 11 out of the total
	466 particles were positrons produced from photon conversion.
	this was recorded by editing EventAction.h and EventAction.cpp
	inspired by the example for Bremsstrahlung photons.

5. "Calculate the fraction of the total *detected* energy in an event that
was deposited by electrons."

	Same printout has the ratio of energy deposited by electrons in
	each detector layer recorded by editing the EnergyCounter.h and
	EnergyCounter.cpp files. This sounds silly, but for the life of
	me couldn't get it to print the sum across the five layers so
	using those numbers in the printout manually I get total fraction
	of energy deposited by electrons over the total detected energy
	across all five layers to be 0.63.

Thanks.


## Fluid Mechanics
### Course Project, 2017fall Exchange Program @ UC Berkeley

This repo contains two MATLAB projects that solves two problems in Fluid Mechanics.

### Project I
Project1_V2.pdf describes the first project, which explores the fundamentals of streamline, streakline and pathline. It uses numerical method for differential equation solutions.

Below is the plot of streamlines based on a given velocity field. The streamlines are plotted using basic numeric solution.
![velocity field and streamline](readme_pic/streamline.jpg)

Below is the plot of the streamline of a flow passing a cylinder. Note that the flow should be inviscid in order to achieve this pattern.
![cylinder](readme_pic/part2-2.jpg)

### Project II
Project 2 is under the folder /project2-NavierStokes. This project explores the fundamentals of a classical problem, [**the Stokes second problem**](https://en.wikipedia.org/wiki/Stokes_problem). Many materials found online, including wikipedia and [MIT OpenCourseWare](https://ocw.mit.edu/courses/mechanical-engineering/2-25-advanced-fluid-mechanics-fall-2013/more-complex-viscous-dominated-flows/MIT2_25F13_SolutionStokes2.pdf), are incomplete as to their descriptions, and the report of this project derives the solution for the problem in detail, in the hope that this will be of some help to future learners.

**The Stokes second problem** states that there is an infinitely large plate that oscillates in a pattern $v = U_0 cos\omega t$. It then asks for the velocity at a certain time $t$ and a coordinate $y$. This is a nonlinear partial-differential equation at first sight, but can be simplified and found a close-form solution for. See [this file](https://github.com/ArayCHN/FluidMechanics/blob/master/project2-NavierStokes/Write_up/report.pdf) for solution.

Also, the solution seeks a normalizing method, interpreting the result of our solution as a kind of wave propagating through the space. The normalized velocity profile is shown below, where x axis is the velocity and y-axis is the height from the plate.
![stokes](readme_pic/plotAll.jpg)
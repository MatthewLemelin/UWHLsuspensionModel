# UWHLsuspensionModel
Suspension Model
There are three files that must be ran to run the simulation. 
  - Mass2_Variables.m
      > Generates the Road condition
     - VerticalHeight.m
          > Matlab Function that is called in Mass2_Variables
  - SeperateVariables_2mass.m
      > Contains the variables such as the spring constants and the dampening coefficeints. 
  - SpringDamper_2mass.m
      > Simulink File to run. When opened double click on scope on the right hand side of the graphic to open the output graph.
      
How to Run the Files:
  > Open Mass2_variable.m and click run to generate the road condition. This should make an excel file called 'RoadCondition.xlsx'
  > Run the SperperateVarialbes_2mass.m file. This will store variables for the simulink model to reference.
  > Open the simulink model named 'SpringDamer_2mass'. Click on the 'Scope' Block on the right hand side. Click the green arrow to run the      simulink model.

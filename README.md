# SW-Lab-U02_W05_D20_22-WorldTrotter-iter3
Third iteration of WorldTrotter App where the screen map and the temperature converter are built programmatically.

## Topics
1. **_Tab Bar Controller_**
   - _**Transition relationship segues**_ between _Tab Bar Controllers_ and _view controllers_. 
   - _Tab Bar Controller_ as the _initial view controller_
2. Property `view` in `UIViewController`s as the root of the _view controller’s view hierarchy_
3. Introduction to **_Map Kit View_**
4. Associate interfaces with _view controllers classes_
5. _**Lazy loading**_ of _view controllers_
   - _View controllers_ **_life cycle_**
---
6. Set up constraints and controls programmatically.
   - Explicit constraints 
    - `NSLayoutConstraint`
   - Fix _**Autoresize mask**_ inconsistencies with the property `translatesAutoresizingMaskIntoConstraints`
   - Creation of constraints wirh _**anchors**_ 
   - _**Layout Guides**_
    - `safeAreaLayoutGuide`
   - _**Margins**_
    - `layoutMarginsGuide`
   - UISegmentedControl
7. Control events with Target-Action paradigm
   - Expose methods to the _**Objective-C runtime**_ with the `@objc` annotation 
8. Refactoring
   - Design patterns
    - Factory Method
   - Activate constraints with `NSLayoutConstraint.activate(_)`
   - Create an _**extension**_ of `UIColor` to reuse customized colours
   - Use of _**extension**_ files to make the extensions reusable on other projects
   - Create customized labels that inherit `UILabel`

## Description
1. Third iteration of WorldTrotter App where the screen map is build programmatically.
2. Bronze challenge: Points of Interest
   - Add a `UILabel` and `UISwitch` to the `MapViewController` interface. 
   - The label should say “Points of Interest” and the switch should toggle the display of points of interest on the map.
   - You will want to add a _**target-action_** pair to the switch that updates the map’s `pointOfInterestFilter` property. 
3. Silver Challenge: Rebuild the Conversion Interface 
   - Currently, the `ConversionViewController` interface is being built in _Interface Builder_.
   - Delete the interface in the storyboard and re-create it programmatically inConversionViewController.swift. 
   - You will want to override `loadView()` just as you did for `MapViewController`. 

## Deadline 
Monday 1st October 12:00 midday

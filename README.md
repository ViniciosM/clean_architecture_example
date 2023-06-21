# CLEAN ARCHITECTURE WITH FLUTTER


## INTRODUCTION

The goal of this project is demonstrate how we can use Clean Archtecture in a Flutter Application.

## LAYERS
 - DOMAIN: Reponsible to describe and define business rules of our system. Very important detail: Domain Layer doesn't know other layers, just himself.

 - DATA: Responsible to comunicate with Databases, local or remote, getting data based on the rules (Domain) and transporting responses for Presentation Layer.

 - PRESENTATION: Responsible to show the UI to the users. Here, we have also controllers (call usecases) to control state of the screen.

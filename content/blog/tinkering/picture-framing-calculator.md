---
title: Picture Framing Calculator
date: 2026-10-26
summary: "A single-file calculator that turns a framing worksheet into numbers and a drawing."
author: Andrew Cambron
---
Framing math is easy until you do it for the fifth piece in a row and transpose a reveal. This calculator takes the AlmFab Picture Frame Worksheet and does the arithmetic for you.

**[Open the calculator](/tools/picture-framing-calculator/)**

It is one HTML file with no network calls. Save it, open it offline, or put it on a classroom machine.

## What it does
* Works out the outside dimension (OD) for matted, float, and flush mounts from the visible area and the four reveals.
* Adds clearance (1/16, 3/32, or 1/8 in.) to get the frame inside dimension (ID).
* Adds up glazing, spacers, mat, art, backer, and strainer to get the minimum frame depth, rounded up so the rabbet is never short.
* Draws a cross-section of the frame profile, to scale in depth, and a front view, to scale.
* Accepts decimals or fractions (8.5, 8 1/2, 3/16) and shows answers in fractions down to 1/32 in.

## Constraints
Tick "Lock the glass / mat size" when the size is already decided, either a stock size (8 × 10 up to 24 × 36) or the opening of a frame you already own. The calculator then works backward: it takes the window and places it inside that size by ratio, and the reveals fall out.

* Window size can come from the art minus an overlap, from the visible area fields, or from a mat weight (narrow, standard, wide) set by the ratio.
* Placement options are raised (top:bottom 1:R), strongly raised (1:R²), three sides even with the bottom taking the rest, centered, window centered on the ratio line, or manual.
* R is the Golden Section by default. DIN paper (1:1.414) and Tatami (1:2) are there too.
* Every reveal snaps to 1/32 in. and the bottom or right side takes the remainder, so the pieces always add up to the locked size.
* If the window does not fit, or the art would stick out past the mat on one side, the Checks panel says so.

## A cutting sheet for the mat cutter
The printout ends with a second page written for the person running the mat cutter. It lists the numbers in the order and with the names the Wizard CMC software uses (Opening Size, Borders for top, bottom and side, and the Outside Size it calculates), a drawing of the mat, the loading steps, and the checks that catch the usual slips: width and height swapped, top and bottom swapped, or a number typed into Outside Size. A separate button prints only that page.

## Checks it runs
* The mat OD must be at least the size of the art, and the visible area cannot exceed it.
* The mat window should overlap the art by at least 1/8 in. per side so there is something to hinge to.
* The frame lip covers about 1/4 in. of the OD on every side, so a reveal smaller than that gets flagged.
* If you enter a moulding's rabbet depth, it tells you whether the stack fits.

## Ratio recommendations
Two tick boxes will suggest numbers instead of making you guess. One fills the mat reveals and one fills the frame face width, both from a ratio you choose: Golden Section, DIN paper (1:1.414), or Tatami (1:2). Mats default to a raised layout, with the bottom heavier than the top. Everything snaps to 1/32 in.

The default depths and thicknesses (Plexi, glass, foam core, 4-ply mat) are typical values. Edit them to match what is on your shelf.

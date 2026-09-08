---
title: "Premiere Productions for Ethnographic Documentary"
date: 2025-12-29
cover:
    image: "/images/projects/nas.png" 
    alt: "My NAS"
    caption: "Workflow on a Shoestring"
    hidden: false
summary: "Building an Internet Radio to fill the void"
author: Andrew Cambron
---

* Background
Working on the documentary "Driven" with my collaborator Dr. Georgina Ramsay has allowed me
to work through some technical issues associated with low budget documentary filmmaking. 

During my time as a filmmaker, I have worked on the extreme high end of editing workflows as
a cold-room tape loader, an assistant, etc. (and all the precision associated with this level of work)
and also on the one-man-band side of things as a corporate/commercial video editor.

This ethnographic documentary project has created for me a new challenge, which is to take
some of the best practices I learned working in reality and documentary post houses, and
apply those lessons to a small scale collaborative workspace for two documentarian/researchers.

There is a relationship between time/efficiency that is of the essence in this space, and as
time/money to work on this project is low, there are many places in our workflow where we have
had to create some technical efficiencies to create the end product that we desired.

* Networked Storage
Working in corporate video I was lucky enough to have gotten to work on some of these networked
storage issues working directly with Bob Zelin (if you lurk on editing forums enough, you'll
know the name) to set up a small NAS server. Returning to this issue, I have been slowly
preparing for a project like this by acquiring the requisite hardware over the course of years
(Unorthodox, but I am a teacher by trade these days, and as with all things, you can learn
to make do or do without.)

I started acquiring my NAS hardware in 2019, and would say I only finished my build-out during
the tail end of this project in 2025, which is to say, don't think you need to buy everything all
at once. Unless you are working full time as a video editor or have a company budget for equipment
this is likely something you will piecemeal over a period of time. I am going to give my opinion on 
equipment to acquire and the order to acquire it in. At the tail end of this six year build,
I have learned where to prioritize your dollars, and how to make do until you can afford it all.

Here is what you need to set up a small NAS for working in Adobe Premiere (I won't give too many hardware
suggestions, as I predict the models for all equipment will update faster than this blog, consult
the good folks over at reddit.com/r/editors for the latest recommendations) 

1. A NAS Enclosure, Solid State Storage (probably M2 or U2) for running the NAS OS on, As Much HDD storage as you can afford.
2. The networking equipment to connect your computer to the NAS over 10G Cat6E (likely a network card for the NAS, A 10G card for your Mac, and a 10G switch, connected to something that can issue DHCP [I used an old router])
3. A local backup for the NAS (One jumbo RAID 0 drive) 
4. A High Speed external Media Cache drive.
4. Networking Equipment for each additional computer.
5. An offsite backup (Another jumbo drive you move around in the event of a fire, or some sort of cloud storage)

I break it up that way, as a NAS is a huge upfront investment for the drive storage. I had to connect
directly over Thunderbolt (a big Bob Zelin no no) until I had enough disposable income to upgrade.

* Configuring the Storage
Again, much of the OS level decision making is something that varies wildly from manufacturer to manufacturer, and evolves with new OSs.
Here are my suggestions based on what I have learned.

1. Make a big storage pool for all your projects.
2. If desirable: create small pools for things like Time Machine Backups so as not to use up all your storage very quickly
3. Create Two-Factor Authentications for your logins
4. Create an admin account and an editor account, and only use the admin account for running updates, and give the editor account limited permissions to create more security
5. Don't enable the cloud connect features, as there is a huge risk of ransomware attacks on small internet-enabled NAS machines.

* Adobe Productions

* Tearing through footage
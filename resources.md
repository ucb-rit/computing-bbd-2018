% BBD Seminar: Overview of tools and resources on campus and beyond: Savio, Box/bDrive, XSEDE
% November 5, 2018
% Chris Paciorek (Berkeley Research Computing)

# Introduction

The goal this week is to (a) familiarize you with various resources and tools for computation and data storage available for researchers on campus and at the national level and (b) demonstrate the use of Spark for big data processing on the campus Savio cluster. 

Two key take-home messages:

 - If you feel like you're scaling back the questions you can answer because of computational limits, talk to us about larger-scale resources that may be available.
 - Consultants with Berkeley Research Computing and Research Data Management are here to help; see end of this document for contact info.


The materials for this session are available using git at [https://github.com/ucb-rit/computing-bbd-2018](https://github.com/ucb-rit/computing-bbd-2018) or simply as a [zip file](https://github.com/ucb-rit/computing-bbd-2018/archive/master.zip). The HTML is also on bCourses.

# Outline

This presentation will cover the following topics:

 - Resources
    - Data storage
    - Savio resources
       - Getting access to Savio
    - XSEDE (NSF) resources
    - How to get help
 - Spark
    - Overview of Map-Reduce
    - Spark overview
    - Spark demo using Python interface
    - Spark demo using R interface

# Data storage for large datasets

 - Box and Google Drive (i.e., bDrive) provide unlimited file storage.
     - Box provides **unlimited**, free, secured, and encrypted content storage of files with a maximum file size of 15 Gb to Berkeley affiliates. 
     - bDrive provides **unlimited**, free, secured, and encrypted content storage of files with a maximum file size of 5 Tb to Berkeley affiliates. 
 - Savio scratch drive provides extensive short-term storage.
 - [Savio condo storage service](http://research-it.berkeley.edu/services/high-performance-computing/brc-condo-storage-service-savio) provides inexpensive long-term storage ($6200 for 42 TB for 5 years).
 - AWS and other cloud services have paid offerings.



# Data storage and computation for confidential data

 - UC Berkeley IST can set up secure virtual machines (VMs)
 - BRC has a template (developed through one of Alan Hubbard's projects) to analyze HIPAA-protected data on AWS
 - ongoing discussions about providing for secure data on Savio
 - BRC has a Windows-based virtual machine service, AEoD, that may be able to address secure data issue

Research Data Management can help you explore options.


# System capabilities and hardware

- Savio is a >380-node, >8000-core Linux cluster rated at >300 peak teraFLOPS. 
   - about 174 compute nodes provided by the institution for general access
   - about 211 compute nodes contributed by researchers in the Condo program

Various pools (partitions) of nodes with specific capabilities

  - 24-core, 64 GB compute nodes (allocated per node)
  - large-memory nodes (128 GB and 512 GB)
  - GPU nodes
  - fast-CPU nodes allocated per core

For more details, [see the *Hardware Configuration* section of this document](http://research-it.berkeley.edu/services/high-performance-computing/user-guide/savio-user-guide).

# Getting access to the system - FCA and condo

- All regular Berkeley faculty can request 300,000 free service units (roughly core-hours) per year through the [Faculty Computing Allowance (FCA)](http://research-it.berkeley.edu/services/high-performance-computing/faculty-computing-allowance)
- Researchers can also purchase nodes for their own priority access and gain access to the shared Savio infrastructure and to the ability to *burst* to additional nodes through the [condo cluster program](http://research-it.berkeley.edu/services/high-performance-computing/condo-cluster-program)
- Instructors can request an [Instructional Computing Allowance (ICA)](http://research-it.berkeley.edu/programs/berkeley-research-computing/instructional-computing-allowance). 

Faculty/principal investigators can allow researchers working with them to get user accounts with access to the FCA or condo resources available to the faculty member.

# XSEDE resources overview

Some core resources we tend to refer researchers to:

- Jetstream
    - VM-based cloud resource
    - long running jobs/servers
    - *possibly* can be used for secure data/compute
    - science gateways - web frontend for users to operate your computational tools
- Bridges
    - traditional HPC
    - Hadoop/Spark
    - large memory (up to 12 TB/node)
    - GPU nodes
    - web server nodes
- Comet
    - some traditional HPC
    - Singularity containers
    - GPU nodes
    - science gateways

Some additional resources:

- Stampede2
    - Intel Many Integrated Core architecture machine
    - KNL nodes with SKX to come
- XStream
    - GPU only machine
- Wrangler
    - data storage machine
    - persistent databases
    - Hadoop

# Accessing XSEDE

BRC consultants (see next slide) can help get you started.

XSEDE has:

  - free initial exploration with limited core-hours (BRC can provide to you)
  - free startup allocations for benchmarking (easy to get with modest application)
  - free research allocations (more extensive application / more competitive)

# Getting help

 - For questions about computing resources in general, including cloud computing: 
    - brc@berkeley.edu
    - office hours: Tuesday 11-1, Thursday 9:30-11, and Friday 1:30-3 in the AIS (117 Dwinelle)
 - For questions about data management (including HIPAA-protected data): 
    - researchdata@berkeley.edu
    - office hours: Tuesday 11-1, Thursday 9:30-11, and Friday 1:30-3 in the AIS (117 Dwinelle)
 - For technical issues and questions about using Savio: 
    - brc-hpc-help@berkeley.edu








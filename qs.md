---
title: Quantified Student
---

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Quantified Student

Analysedocument v2.0

Contents {#contents .Kopvaninhoudsopgave}
========

[Revision History 3](#revision-history)

[Glossary 4](#glossary)

[Requirements Specification (RS) 5](#requirements-specification-rs)

[MoSCoW analysis 5](#moscow-analysis)

[Functional Requirements 5](#functional-requirements)

[Central Storage Location 5](#central-storage-location)

[Data Gathering 5](#data-gathering)

[Application 6](#application)

[Non-functional Requirements 8](#non-functional-requirements)

[Quality attributes 8](#quality-attributes)

[Use cases 9](#use-cases)

[Use case tables: 9](#use-case-tables)

[UI drafts/sketches 10](#ui-draftssketches)

[Dashboard 10](#dashboard-1)

[Login page 11](#login-page)

[Registration page 11](#registration-page)

[Registration page -- Service selection
12](#registration-page-service-selection)

[Appendix 1: 13](#appendix-1)

Revision History
================

  Date         Version   Changes
  ------------ --------- ---------------------------------------------------------------------------------------
  27-09-2016   1.0       Initial version
  28-09-2016   1.1       Updated this document to English, Use case diagrams and Use cases made by whole team.
  30-10-2016   1.2       Added UI mockups
  19-12-2016   1.3       Updated quality attributes
  15-01-2019   2.0       Rewritten most of the document

Glossary
========

+-----------------------------+-----------------------------------+
| Term                        | Definition                        |
+=============================+===================================+
| Use case diagram            | In the Use case diagram shows the |
|                             | coherence and relations between   |
|                             | the actor(s) and different use    |
|                             | cases.                            |
+-----------------------------+-----------------------------------+
| Use case                    | A Use case represents an action   |
|                             | that an actor can do. This can be |
|                             | something like "Administrator     |
|                             | logging in". Here the actor would |
|                             | be the administrator and the use  |
|                             | case "log in".                    |
+-----------------------------+-----------------------------------+
| Actor                       | A specific type of user, using a  |
|                             | specific system. For example a    |
|                             | regular user or administrator.    |
+-----------------------------+-----------------------------------+
| MoSCoW                      | The **M**o**SC**o**W**-model has  |
|                             | been specifically designed to     |
|                             | prioritize the different          |
|                             | requirements for a project. By    |
|                             | using the consonants in           |
|                             | "**M**o**SC**o**W**" you can show |
|                             | the priority of a requirement.    |
|                             |                                   |
|                             | Below you can find a short        |
|                             | explanation for each of the four  |
|                             | different levels of priority.     |
|                             |                                   |
|                             | **Must**: These requirements      |
|                             | **must** be completed before the  |
|                             | deadline.                         |
|                             |                                   |
|                             | **Should**: When all              |
|                             | must-requirements are completed   |
|                             | you can continue working on these |
|                             | requirements.                     |
|                             |                                   |
|                             | **Could**: These are identical to |
|                             | how the should-requirements       |
|                             | compare to must requirements.     |
|                             | Once you are finished with all    |
|                             | should requirements you can work  |
|                             | on these requirements.            |
|                             |                                   |
|                             | **Won't**: These requirements are |
|                             | not interesting enough to spend   |
|                             | time on with the current project  |
|                             | group, but could be interesting   |
|                             | for the next project group.       |
+-----------------------------+-----------------------------------+
| Functional requirements     | Functional requirements describe  |
|                             | specific behavior and functions   |
|                             | that the system has to            |
|                             | provide/adhere to.                |
+-----------------------------+-----------------------------------+
| Non-functional requirements | Non-functional requirements       |
|                             | describe properties of the        |
|                             | system, like performance. However |
|                             | you do not put any functional     |
|                             | requirements in here.             |
+-----------------------------+-----------------------------------+

Requirements Specification (RS)
===============================

MoSCoW analysis
---------------

Below you can find the tables with all the requirements for the
Quantified Student project.

  --- --- --- ---
  M   S   C   W
  --- --- --- ---

These are the colors associated with each priority level:

Functional Requirements
-----------------------

Below are the detailed functional requirements for the Quantified
Student project.

### Central Storage Location

  Id          Requirement                                                        MoSCoW   Urgency    Comments
  ----------- ------------------------------------------------------------------ -------- ---------- ----------
  \[CSL01\]   There is a central location where the data is stored               **M**    *High*
  \[CSL02\]   There is a central location where a backup of our data is stored   **M**    *Medium*
  \[CSL03\]   The data that is stored is encrypted                               **M**    *Low*
  \[CSL04\]   The registered users are stored in a separate storage location.    **M**    *High*

###

### Data Gathering

  Id         Requirement                                                                          MoSCoW   Urgency    Comments
  ---------- ------------------------------------------------------------------------------------ -------- ---------- ----------
  \[DC01\]   There is a method defined that will collect the data from the Fitbit API             **M**    *High*
  \[DC02\]   There is a method defined that will collect the data from the Fontys API             **S**    *Medium*
  \[DC03\]   There is a method defined that will collect environment data from an external API.   **C**    *Low*
  \[DC04\]   There is a mobile application that collects extra data                               **C**    *Low*
  \[DC05\]   There is a method defined that will collect data from Smart Citizen devices          **C**    *Low*

### Application

#### User Identification System

  ------------------------------------------------------------------------------------------------------------------------------------
  Id          Requirement                                      MoSCoW   Urgency    Comments
  ----------- ------------------------------------------------ -------- ---------- ---------------------------------------------------
  \[UIS01\]   A user can register using their school account   **M**    *High*

  \[UIS02\]   A user can log in using their account            **M**    *High*     Only if the account used is registered

  \[UIS03\]   A user can log out                               **M**    *High*     Only if the user is logged in

  \[UIS04\]   A user needs to connect a service                **S**    *Medium*   Atleast 1 service\
                                                                                   Services such as: Fitbit, Canvas, IOS Health, etc
  ------------------------------------------------------------------------------------------------------------------------------------

#### Dashboard

  Id        Requirement                                                              MoSCoW   Urgency    Comments
  --------- ------------------------------------------------------------------------ -------- ---------- ----------
  \[D01\]   The user can define their preferences in showing data                    M        *High*
  \[D02\]   The user can view their school attendance                                M        *Medium*
  \[D03\]   The user can view their sleeping pattern                                 M        *Medium*
  \[D04\]   The user can view their heartrate over a period of time                  M        *Medium*
  \[D05\]   The user can view their grades                                           M        *Medium*
  \[D06\]   The user can view their submitting pattern                               M        *Medium*
  \[D07\]   The user can compare their data with peers                               M        *Medium*
  \[D08\]   The user can view his To-do's from Canvas                                **S**    *Low*
  \[D09\]   The user can see an overview of their activities                         **S**    *Low*
  \[D10\]   The user can enter their eating habits                                   **S**    *Low*
  \[D11\]   The user can submit how they are feeling in a mood log                   **S**    *Low*
  \[D12\]   The user can view their step count                                       **S**    *Low*
  \[D13\]   The user can view their whereabouts                                      **S**    *Low*
  \[D14\]   The user can view their biometrics in an overview with periods of time   **S**    *Low*
  \[D15\]   The user can view their activities in an overview with periods of time   **S**    *Low*

#### User Settings

  Id         Requirement                                                         MoSCoW   Urgency    Comments
  ---------- ------------------------------------------------------------------- -------- ---------- ----------
  \[US01\]   The user can decide which data it would like to share.              M        *High*
  \[US02\]   The user can request to download all their data                     M        *High*
  \[US03\]   The user can remove their account                                   M        *High*
  \[US04\]   The user can give permission to compare his data with other users   S        *Medium*
  \[US05\]   The user can subscribe to periodically receive notifications        S        *Medium*
  \[US06\]   The user wants to know when their data was last synced              C        *Low*

### Non-functional Requirements

Below is the table that shows all non-functional requirements for the QS
project.

  Id         Requirement                                                                         Priority   Comments
  ---------- ----------------------------------------------------------------------------------- ---------- ----------
  \[NF01\]   The UI looks well organized                                                         M
  \[NF02\]   The UI is easy to use.                                                              M
  \[NF03\]   All code is easy to read, well documented and easy to transfer to the next group.   M
  \[NF04\]   The application has a well-structured design that facilitates easy maintenance.     M

### Quality attributes 

  ID          Category            Description 
  ----------- ------------------- --------------------------------------------------------------------------------------------------------------------------------------------
  \[NF01\]    *Maintainability*   The system is maintainable because it is future proof. This means the code is clean, commented  and tested for easy changes in the future.
  \[NF02\]    *Usability*         The UI will be made in an intuitive way in order to ensure maximum user experience.
  \[NF03\]    *Usability*         The UI will be made in an intuitive way in order to ensure maximum user friendliness.
  \[NF04\]    *Maintainability*   The code will be clean, commented  and tested for easy transfer from the current to the next group.
  \[NF05\]    *Maintainability*   The code will be clean, commented  and tested for easy maintenance.
  \[NF06\]    *Security*          The system has restrictions of users access in accordance with authentication / authorization
  \[NF07\]    *Maintainability*   The system has both integration and unit tests for the highest risk classes to ensure that crucial items are not broken.
  \[NF08\]    *Reliability*       The system sends alerts by e-mail when errors occur on production

Use cases
---------

![](-s/media/image1.png){width="8.253680008748907in"
height="3.7083333333333335in"}Below you can see the use case diagram.

### Use case tables:

The use case tables can be found in Appendix 1.

UI drafts/sketches
==================

![](-s/media/image2.png){width="7.96875in" height="6.519444444444445in"}Dashboard
----------------------------------------------------------------------------------

![](-s/media/image3.png){width="7.636111111111111in" height="4.291666666666667in"}Login page
--------------------------------------------------------------------------------------------

Registration page
-----------------

![](-s/media/image4.png){width="7.8590277777777775in"
height="4.416666666666667in"}

Registration page -- Service selection
--------------------------------------

![](-s/media/image5.png){width="7.8590277777777775in"
height="4.010416666666667in"}

![](-s/media/image6.png){width="8.291831802274716in" height="6.921738845144357in"}Domain Model
----------------------------------------------------------------------------------------------

Appendix 1:
===========

+---------------+-----------------------------------------------------------+
| Usecase UIS01 |                                                           |
+===============+===========================================================+
| Name          | Register Account                                          |
+---------------+-----------------------------------------------------------+
| Actors        | User                                                      |
+---------------+-----------------------------------------------------------+
| Assumption    | Actor doesn\'t have a registered account                  |
+---------------+-----------------------------------------------------------+
| Description   | 1\. Actor goes to the register web page                   |
|               |                                                           |
|               | 2\. System asks for the Fontys account                    |
|               |                                                           |
|               | information                                               |
|               |                                                           |
|               | 3\. Actor fills their Fontys account information          |
|               |                                                           |
|               | In \[1\]                                                  |
|               |                                                           |
|               | 5\. System asks for additional information                |
|               |                                                           |
|               | 6\. Actor fills in requested information                  |
|               |                                                           |
|               | 7\. System requests user to connect a service             |
|               |                                                           |
|               | 8\. Actor connects Fitbit                                 |
|               |                                                           |
|               | 9\. Actor fills their Fitbit account information in \[2\] |
|               |                                                           |
|               | 10\. System registers the account                         |
+---------------+-----------------------------------------------------------+
| Exceptions    | \[1\] The credentials are not known in the system:        |
|               |                                                           |
|               | \- Show user a notification\                              |
|               | - Go back to step 2                                       |
|               |                                                           |
|               | \[2\] Fitbit account information is invalid               |
|               |                                                           |
|               | \- Show user a notification                               |
|               |                                                           |
|               | \- Go back to step 9                                      |
+---------------+-----------------------------------------------------------+
| Final Result  | Account has been registered                               |
+---------------+-----------------------------------------------------------+

+---------------+-------------------------------------------------+
| Usecase UIS02 |                                                 |
+===============+=================================================+
| Name          | Log In                                          |
+---------------+-------------------------------------------------+
| Actors        | User                                            |
+---------------+-------------------------------------------------+
| Assumption    | Actor is not logged in                          |
+---------------+-------------------------------------------------+
| Description   | 1\. Actor goes to the Log In web page           |
|               |                                                 |
|               | 2\. System asks for the actors Log In           |
|               |                                                 |
|               | 3\. Actor fills his Log In information in \[1\] |
|               |                                                 |
|               | 4\. System Logs the actor in                    |
+---------------+-------------------------------------------------+
| Exceptions    | \[1\] Log In information is invalid             |
|               |                                                 |
|               | \- Show user a notification                     |
|               |                                                 |
|               | \- Go back to step 2                            |
+---------------+-------------------------------------------------+
| Final Result  | Actor is logged in                              |
+---------------+-------------------------------------------------+

+---------------+-------------------------------+
| Usecase UIS03 |                               |
+===============+===============================+
| Name          | Log Out                       |
+---------------+-------------------------------+
| Actors        | User                          |
+---------------+-------------------------------+
| Assumption    | Actor is logged in            |
+---------------+-------------------------------+
| Description   | 1\. Actor presses Log Out     |
|               |                               |
|               | 2\. System Logs the actor out |
+---------------+-------------------------------+
| Exceptions    |                               |
+---------------+-------------------------------+
| Final Result  | Actor is logged out           |
+---------------+-------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase D01                       |                                   |
+===================================+===================================+
| Name                              | Define Preferences                |
+-----------------------------------+-----------------------------------+
| Actors                            | User                              |
+-----------------------------------+-----------------------------------+
| Assumptions                       | Actor is logged in                |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor clicks on the settings  |
|                                   | icon.                             |
|                                   |                                   |
|                                   | 2\. The system redirects the      |
|                                   | user to the settings screen.      |
|                                   | \[1\]                             |
|                                   |                                   |
|                                   | 3\. Actor can check several       |
|                                   | checkboxes to define what data    |
|                                   | he wants to share and what he     |
|                                   | doesn't want to share.            |
|                                   |                                   |
|                                   | 4\. Actor clicks on the save      |
|                                   | button.                           |
|                                   |                                   |
|                                   | 5\. The system saves the users    |
|                                   | preferences.                      |
+-----------------------------------+-----------------------------------+
| Exceptions                        |                                   |
+-----------------------------------+-----------------------------------+
| Final result                      | The user's preferences are saved  |
+-----------------------------------+-----------------------------------+

+--------------+---------------------------------------------+
| Usecase D02  |                                             |
+==============+=============================================+
| Name         | View School attendance                      |
+--------------+---------------------------------------------+
| Actors       | User                                        |
+--------------+---------------------------------------------+
| Assumptions  | Actor is logged in                          |
+--------------+---------------------------------------------+
| Description  | 1\. Actor views their homescreen dashboard. |
|              |                                             |
|              | 2\. Actor selects school attendance.        |
+--------------+---------------------------------------------+
| Exceptions   |                                             |
+--------------+---------------------------------------------+
| Final result | Actor can view their school attendance.     |
+--------------+---------------------------------------------+

+--------------+-------------------------------------------------------------+
| Usecase D03  |                                                             |
+==============+=============================================================+
| Name         | View Sleeping pattern                                       |
+--------------+-------------------------------------------------------------+
| Actors       | User                                                        |
+--------------+-------------------------------------------------------------+
| Assumptions  | Actor is logged in                                          |
+--------------+-------------------------------------------------------------+
| Description  | 1\. Actor views their homescreen dashboard.                 |
|              |                                                             |
|              | 2\. Actor selects sleeping pattern.                         |
|              |                                                             |
|              | 3\. Dashboard will show the sleeping pattern of actor \[1\] |
+--------------+-------------------------------------------------------------+
| Exceptions   | \[1\] There is no sleeping pattern information available:   |
|              |                                                             |
|              | > \- Show actor notification\                               |
|              | > - Go back to step 1                                       |
+--------------+-------------------------------------------------------------+
| Final result | Actor can view his sleeping pattern.                        |
+--------------+-------------------------------------------------------------+

+-----------------------------------+-----------------------------------+
| Use case D04                      |                                   |
+===================================+===================================+
| Name                              | View Heartrate                    |
+-----------------------------------+-----------------------------------+
| Actors                            | User                              |
+-----------------------------------+-----------------------------------+
| Assumptions                       | Actor is logged in                |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor goes to the heartrate   |
|                                   | page                              |
|                                   |                                   |
|                                   | 2\. Dashboard shows option to     |
|                                   | selected period of time           |
|                                   |                                   |
|                                   | 3\. Actor choses a period of      |
|                                   | time                              |
|                                   |                                   |
|                                   | 4\. Dashboard will show the       |
|                                   | heartrate over the chosen         |
|                                   | period of time \[1\]              |
+-----------------------------------+-----------------------------------+
| Exceptions                        | \[1\] There is no heartrate       |
|                                   | information available for         |
|                                   | selected period of time:          |
|                                   |                                   |
|                                   | > \- Show actor notification\     |
|                                   | > - Go back to step 2             |
+-----------------------------------+-----------------------------------+
| Final result                      | System will generate and show the |
|                                   | heartrate over the chosen period  |
|                                   | of time                           |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Use case D05                      |                                   |
+===================================+===================================+
| Name                              | View Grades                       |
+-----------------------------------+-----------------------------------+
| Actors                            | User                              |
+-----------------------------------+-----------------------------------+
| Assumptions                       | Actor is logged in                |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor goes to the grades      |
|                                   | page                              |
|                                   |                                   |
|                                   | 2\. Dashboard will show an        |
|                                   | overview of all grades \[1\]      |
+-----------------------------------+-----------------------------------+
| Exceptions                        | \[1\] There are no grades         |
|                                   | available:                        |
|                                   |                                   |
|                                   | \- Show actor notification        |
|                                   |                                   |
|                                   | \- Go back to step 1              |
+-----------------------------------+-----------------------------------+
| Final result                      | System will generate and show an  |
|                                   | overview of all grades of the     |
|                                   | current actor                     |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Use case D06                      |                                   |
+===================================+===================================+
| Name                              | View Submission Pattern           |
+-----------------------------------+-----------------------------------+
| Actors                            | User                              |
+-----------------------------------+-----------------------------------+
| Assumptions                       | Actor is logged in                |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor goes to the submitting  |
|                                   | pattern page                      |
|                                   |                                   |
|                                   | 2\. Dashboard will show an        |
|                                   | overview of all the courses       |
|                                   | \[1\]                             |
|                                   |                                   |
|                                   | 3\. Actor chooses a course and a  |
|                                   | period                            |
|                                   |                                   |
|                                   | 4\. Dashboard will show the       |
|                                   | submitting pattern for that       |
|                                   | course in the given period        |
|                                   | \[2\]                             |
+-----------------------------------+-----------------------------------+
| Exceptions                        | \[1\] The actor doesn't take any  |
|                                   | courses                           |
|                                   |                                   |
|                                   | \- Show actor notification        |
|                                   |                                   |
|                                   | \- Go back to step 2              |
|                                   |                                   |
|                                   | \[2\] The actor was not           |
|                                   | participating in the course       |
|                                   | during the given period           |
|                                   |                                   |
|                                   | \- Show actor notification        |
|                                   |                                   |
|                                   | \- Go back to step 3              |
+-----------------------------------+-----------------------------------+
| Final result                      | System will generate and show the |
|                                   | submitting pattern for that       |
|                                   | course in the given period        |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase D07                       |                                   |
+===================================+===================================+
| Name                              | Comparing data with peers         |
+-----------------------------------+-----------------------------------+
| Actor                             | User                              |
+-----------------------------------+-----------------------------------+
| Assumption                        | The actor is logged in and has    |
|                                   | given permission to share data    |
|                                   | with peers                        |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor goes to the compare     |
|                                   | peer data page                    |
|                                   |                                   |
|                                   | 2\. Actor selects which data to   |
|                                   | compare with peers                |
|                                   |                                   |
|                                   | 2\. Dashboard will show the       |
|                                   | compared data of the actor        |
|                                   | \[1\]                             |
+-----------------------------------+-----------------------------------+
| Exceptions                        | \[1\] Actor has no data           |
|                                   | available:                        |
|                                   |                                   |
|                                   | \- Only show peer data            |
+-----------------------------------+-----------------------------------+
| Final result                      | The submission patterns are shown |
|                                   | on the screen                     |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase D08                       |                                   |
+===================================+===================================+
| Name                              | View ToDo's Canvas                |
+-----------------------------------+-----------------------------------+
| Actor                             | User                              |
+-----------------------------------+-----------------------------------+
| Assumption                        | The actor is logged in and the    |
|                                   | actor has given rights to view    |
|                                   | Todo's in Canvas                  |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor chooses for the menu    |
|                                   | ToDo                              |
|                                   |                                   |
|                                   | 2\. Dashboard shows the ToDo      |
|                                   | screen \[1\]                      |
+-----------------------------------+-----------------------------------+
| Exceptions                        | \[1\] There are no ToDo's         |
|                                   | available:                        |
|                                   |                                   |
|                                   | \- Show actor notification        |
|                                   |                                   |
|                                   | \- Go back to step 1              |
+-----------------------------------+-----------------------------------+
| Final result                      | The ToDo's are shown on the       |
|                                   | screen                            |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase D09                       |                                   |
+===================================+===================================+
| Name                              | View overview activities          |
+-----------------------------------+-----------------------------------+
| Actor                             | User                              |
+-----------------------------------+-----------------------------------+
| Assumption                        | The actor is logged in and has    |
|                                   | given permission to share         |
|                                   | activity data.                    |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor chooses for the menu    |
|                                   | Activities                        |
|                                   |                                   |
|                                   | 2\. Dashboard shows the           |
|                                   | Activities screen \[1\]           |
+-----------------------------------+-----------------------------------+
| Exceptions                        | \[1\] There are no activities     |
|                                   | available:                        |
|                                   |                                   |
|                                   | \- Show actor notification        |
|                                   |                                   |
|                                   | \- Go back to step 1              |
+-----------------------------------+-----------------------------------+
| Final result                      | An overview for the Activities    |
|                                   | are shown on the screen           |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase D10                       |                                   |
+===================================+===================================+
| Name                              | Add eating habbit                 |
+-----------------------------------+-----------------------------------+
| Actor                             | User                              |
+-----------------------------------+-----------------------------------+
| Assumption                        | Actor is logged in                |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. The actor opens the Eating    |
|                                   | Habits page                       |
|                                   |                                   |
|                                   | 2\. The system shows the Eating   |
|                                   | Habits screen                     |
|                                   |                                   |
|                                   | 3\. The actor chooses for New     |
|                                   |                                   |
|                                   | 4\. The actor fills in the name   |
|                                   | for the meal, the date and time   |
|                                   | and the amount of Kcal            |
|                                   |                                   |
|                                   | 5\. The actor chooses for Create  |
|                                   | eating habit                      |
|                                   |                                   |
|                                   | 6\. The system insert the data    |
|                                   | in de DB                          |
|                                   |                                   |
|                                   | 7\. The system shows the          |
|                                   | overview in the Eating Habits     |
|                                   | screen                            |
+-----------------------------------+-----------------------------------+
| Exceptions                        |                                   |
+-----------------------------------+-----------------------------------+
| Final result                      | The actor added an eating habit   |
+-----------------------------------+-----------------------------------+

+--------------+-----------------------------------------------------------+
| Usecase D    |                                                           |
+==============+===========================================================+
| Name         | View eating habbit                                        |
+--------------+-----------------------------------------------------------+
| Actor        | User                                                      |
+--------------+-----------------------------------------------------------+
| Assumption   | Actor is logged in and has inserted some eating habits    |
+--------------+-----------------------------------------------------------+
| Description  | 1\. Actor chooses for the menu Eating Habits              |
|              |                                                           |
|              | 2\. Dashboard shows the Eating Habits screen              |
+--------------+-----------------------------------------------------------+
| Exceptions   |                                                           |
+--------------+-----------------------------------------------------------+
| Final result | An overview for the eating habits are shown on the screen |
+--------------+-----------------------------------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase D11                       |                                   |
+===================================+===================================+
| Name                              | Add mood in Mood log              |
+-----------------------------------+-----------------------------------+
| Actors                            | User                              |
+-----------------------------------+-----------------------------------+
| Assumptions                       | Actor is logged in                |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor goes to the mood log    |
|                                   | page                              |
|                                   |                                   |
|                                   | 2\. Dashboard shows notification  |
|                                   | to ask how actor is feeling       |
|                                   |                                   |
|                                   | 3\. Actor clicks on most          |
|                                   | accurate representation of mood   |
|                                   |                                   |
|                                   | 4\. Dashboard will add the mood   |
+-----------------------------------+-----------------------------------+
| Exceptions                        |                                   |
+-----------------------------------+-----------------------------------+
| Final result                      | System will add the mood to the   |
|                                   | actor for that date and time.     |
+-----------------------------------+-----------------------------------+

+--------------+--------------------------------------------------------------+
| Usecase D12  |                                                              |
+==============+==============================================================+
| Name         | View step count                                              |
+--------------+--------------------------------------------------------------+
| Actor        | User                                                         |
+--------------+--------------------------------------------------------------+
| Assumption   | Actor is logged in                                           |
+--------------+--------------------------------------------------------------+
| Description  | 1\. Actor goes to the activity page                          |
|              |                                                              |
|              | 2\. Actor specifies to show steps                            |
|              |                                                              |
|              | 3\. Actor specifies date range                               |
|              |                                                              |
|              | 4\. Dashboard shows requested steps in requested range \[1\] |
+--------------+--------------------------------------------------------------+
| Exceptions   | \[1\] There are no step counts available:                    |
|              |                                                              |
|              | \- Show actor notification                                   |
|              |                                                              |
|              | \- Go to step 1                                              |
+--------------+--------------------------------------------------------------+
| Final result | An overview of the step counts in the specified range        |
+--------------+--------------------------------------------------------------+

+--------------+---------------------------------------------------------+
| Usecase D13  |                                                         |
+==============+=========================================================+
| Name         | View location                                           |
+--------------+---------------------------------------------------------+
| Actor        | User                                                    |
+--------------+---------------------------------------------------------+
| Assumption   | Actor is logged in                                      |
+--------------+---------------------------------------------------------+
| Description  | 1\. Actor goes to the location page                     |
|              |                                                         |
|              | 2\. Dashboard shows where actor has been in a map \[1\] |
+--------------+---------------------------------------------------------+
| Exceptions   | \[1\] There are no location data available:             |
|              |                                                         |
|              | \- Show actor notification                              |
|              |                                                         |
|              | \- Go to step 1                                         |
+--------------+---------------------------------------------------------+
| Final result | Dashboard shows map of actors' whereabouts              |
+--------------+---------------------------------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase D14                       |                                   |
+===================================+===================================+
| Name                              | View biometric data               |
+-----------------------------------+-----------------------------------+
| Actor                             | User                              |
+-----------------------------------+-----------------------------------+
| Assumption                        | Actor is logged in                |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor goes to the biometric   |
|                                   | data page                         |
|                                   |                                   |
|                                   | 2\. Actor specifies to show       |
|                                   | specific biometric                |
|                                   |                                   |
|                                   | 3\. Actor specifies date range    |
|                                   |                                   |
|                                   | 2\. Dashboard shows requested     |
|                                   | biometric data in requested       |
|                                   | range \[1\]                       |
+-----------------------------------+-----------------------------------+
| Exceptions                        | \[1\] There are no biometric data |
|                                   | available:                        |
|                                   |                                   |
|                                   | \- Show actor notification        |
|                                   |                                   |
|                                   | \- Go to step 1                   |
+-----------------------------------+-----------------------------------+
| Final result                      | Dashboard shows biometric data of |
|                                   | the actor                         |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase D15                       |                                   |
+===================================+===================================+
| Name                              | View activity for specific time   |
+-----------------------------------+-----------------------------------+
| Actor                             | User                              |
+-----------------------------------+-----------------------------------+
| Assumption                        | The actor is logged in and has    |
|                                   | given permission to share         |
|                                   | activity data.                    |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor chooses for the menu    |
|                                   | Activities                        |
|                                   |                                   |
|                                   | 2\. Actor specifies timeframe     |
|                                   |                                   |
|                                   | 2\. Dashboard shows the           |
|                                   | Activities screen for specific    |
|                                   | timeframe \[1\]                   |
+-----------------------------------+-----------------------------------+
| Exceptions                        | \[1\] There are no activities     |
|                                   | available:                        |
|                                   |                                   |
|                                   | \- Show actor notification        |
|                                   |                                   |
|                                   | \- Go back to step 1              |
+-----------------------------------+-----------------------------------+
| Final result                      | An overview for the Activities,   |
|                                   | for the specific timeframe, is    |
|                                   | shown on the screen               |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase US01                      |                                   |
+===================================+===================================+
| Name                              | Set permissions                   |
+-----------------------------------+-----------------------------------+
| Actor                             | User of the QS Dashboard          |
+-----------------------------------+-----------------------------------+
| Assumptions                       | Actor is logged in.               |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor opens their account     |
|                                   | settings                          |
|                                   |                                   |
|                                   | 2\. System loads the specific     |
|                                   | account settings for the user     |
|                                   | logged in                         |
|                                   |                                   |
|                                   | 3\. Actor makes the choice to     |
|                                   | enable or disable to share the    |
|                                   | data with others                  |
|                                   |                                   |
|                                   | 4\. System saves the choice of    |
|                                   | the user                          |
+-----------------------------------+-----------------------------------+
| Exception                         |                                   |
+-----------------------------------+-----------------------------------+
| Final Result                      | Permissions to share personal     |
|                                   | data is stored to the users       |
|                                   | preference.                       |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase US02                      |                                   |
+===================================+===================================+
| Name                              | Request download of userdata      |
+-----------------------------------+-----------------------------------+
| Actor                             | User of the QS Dashboard          |
+-----------------------------------+-----------------------------------+
| Assumptions                       | Actor is logged in.               |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor opens their account     |
|                                   | settings                          |
|                                   |                                   |
|                                   | 2\. System loads the specific     |
|                                   | account settings for the user     |
|                                   | logged in                         |
|                                   |                                   |
|                                   | 3\. Actor clicks the request all  |
|                                   | data button                       |
|                                   |                                   |
|                                   | 4\. System retrieves all data     |
|                                   | and sends email to actor with     |
|                                   | data                              |
+-----------------------------------+-----------------------------------+
| Exception                         |                                   |
+-----------------------------------+-----------------------------------+
| Final Result                      | Actor receives all their data via |
|                                   | e-mail                            |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase US03                      |                                   |
+===================================+===================================+
| Name                              | Removal of account                |
+-----------------------------------+-----------------------------------+
| Actor                             | User of the QS Dashboard          |
+-----------------------------------+-----------------------------------+
| Assumptions                       | Actor is logged in.               |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor opens their account     |
|                                   | settings                          |
|                                   |                                   |
|                                   | 2\. System loads the specific     |
|                                   | account settings for the user     |
|                                   | logged in                         |
|                                   |                                   |
|                                   | 3\. Actor clicks the delete       |
|                                   | account                           |
|                                   |                                   |
|                                   | 4\. System shows confirmation     |
|                                   | notification                      |
|                                   |                                   |
|                                   | 5\. Actor clicks 'Yes, I'm sure"  |
|                                   |                                   |
|                                   | 6\. System deletes the account    |
|                                   | and data associated with it.      |
+-----------------------------------+-----------------------------------+
| Exception                         |                                   |
+-----------------------------------+-----------------------------------+
| Final Result                      | System has removed actors account |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase US04                      |                                   |
+===================================+===================================+
| Name                              | Compare data                      |
+-----------------------------------+-----------------------------------+
| Actor                             | User of the QS Dashboard          |
+-----------------------------------+-----------------------------------+
| Assumptions                       | User is logged in.                |
|                                   |                                   |
|                                   | Canvas is connected to the QS     |
|                                   | dashboard                         |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor opens their account     |
|                                   | settings                          |
|                                   |                                   |
|                                   | 2\. System loads the specific     |
|                                   | account settings for the user     |
|                                   | logged in\]                       |
|                                   |                                   |
|                                   | 3\. Actor makes the choice to     |
|                                   | enable or disable to compare      |
|                                   | his data with others              |
|                                   |                                   |
|                                   | 4\. System saves the choice of    |
|                                   | the user                          |
+-----------------------------------+-----------------------------------+
| Exception                         |                                   |
+-----------------------------------+-----------------------------------+
| Final Result                      | Permissions to share personal     |
|                                   | data is stored to the users       |
|                                   | preference.                       |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase US05                      |                                   |
+===================================+===================================+
| Name                              | Subscribe to notifications        |
+-----------------------------------+-----------------------------------+
| Actor                             | User of the QS Dashboard          |
+-----------------------------------+-----------------------------------+
| Assumptions                       | Actor is logged in.               |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor opens their account     |
|                                   | settings                          |
|                                   |                                   |
|                                   | 2\. System loads the specific     |
|                                   | account settings for the user     |
|                                   | logged in                         |
|                                   |                                   |
|                                   | 3\. Actor makes the choice to     |
|                                   | which notifications they would    |
|                                   | like to subscribe to              |
|                                   |                                   |
|                                   | 4\. System saves the choice of    |
|                                   | the user                          |
+-----------------------------------+-----------------------------------+
| Exception                         |                                   |
+-----------------------------------+-----------------------------------+
| Final Result                      | System saves the Notification     |
|                                   | Subscription settings             |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| Usecase US06                      |                                   |
+===================================+===================================+
| Name                              | Check last date of synced data    |
+-----------------------------------+-----------------------------------+
| Actor                             | User of the QS Dashboard          |
+-----------------------------------+-----------------------------------+
| Assumptions                       | Actor is logged in.               |
+-----------------------------------+-----------------------------------+
| Description                       | 1\. Actor opens their account     |
|                                   | settings                          |
|                                   |                                   |
|                                   | 2\. System loads the specific     |
|                                   | account settings for the user     |
|                                   | logged in                         |
|                                   |                                   |
|                                   | 3\. Actor checks when data was    |
|                                   | last synced \[1\]                 |
+-----------------------------------+-----------------------------------+
| Exception                         | \[1\] There has not been a sync:  |
|                                   |                                   |
|                                   | \- Show actor notification        |
|                                   |                                   |
|                                   | \- Go back to step 1              |
+-----------------------------------+-----------------------------------+
| Final Result                      | System shows last sync date to    |
|                                   | actor                             |
+-----------------------------------+-----------------------------------+

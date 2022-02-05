2022-01-19: Install MATLAB 

Installation directions:
https://wiki.sandia.gov/display/CEE9/SRN+-+MathWorks+Suite+Use


From cee-software
https://cee-software.sandia.gov/software/

Navigate to
https://cee-software.sandia.gov/software/Matlab/MacOSX/2021b/

Downloaded and run:
matlab_R2021b_maci64.dmg

Obtain the Network License file from 
https://cee-software.sandia.gov/software/Matlab/NetworkLicense/

Copy the license file to
~/.config/MATLAB/ folder

Start the license manager, lmstart.  In a terminal
> cd /Applications/MATLAB_R2021b.app/etc/
> ./lmstart


chovey@s1060600 /A/M/etc> ./lmstart                                                                                    (base)

Checking license file for local hostname and local hostid . . .

    Error: Your host does not match any SERVER line in your license
           file. Your local lmhostid(s) are:

           147dda3f1214

           Your hostname is:  s1060600

           The SERVER line(s) are:

           -----------------------------------------------
           SERVER license.sandia.gov INTERNET=10.251.0.8 1701
           -----------------------------------------------

Please stop, fix the problem, and try again . . .

Continue to start up license manager? y/[n])


Checking license file for local hostname and local hostid . . .

    Error: Your host does not match any SERVER line in your license
           file. Your local lmhostid(s) are:

           147dda3f1214

           Your hostname is:  s1060600

           The SERVER line(s) are:

           -----------------------------------------------
           SERVER license.sandia.gov INTERNET=10.251.0.8 1701
           -----------------------------------------------

Please stop, fix the problem, and try again . . .

Continue to start up license manager? y/[n]) y

Taking down any existing license manager daemons . . .

    No license manager daemons running . . .

Starting license manager . . .

    Debug logfile = /var/tmp/lm_TMW.log
    Waiting 300 secs for MATLAB vendor daemon to come up . . .
            Type your interrupt character (usually CTRL-C) to quit.
    Time = 3 secs  :  still waiting . . .
    Time = 30 secs  :  still waiting . . .
------------------------------------------------------------------------
Thu Jan 20 10:07:44 MST 2022    LM_LOGFILE (last 2 lines)
25 10:07:17 (lmgrd) Valid license server system hosts are: "license.sandia.gov"
26 10:07:17 (lmgrd) Using license file "/var/tmp/lm_TMW.dat"
------------------------------------------------------------------------
    Time = 60 secs  :  still waiting . . .
------------------------------------------------------------------------
Thu Jan 20 10:08:14 MST 2022    LM_LOGFILE (last 2 lines)
25 10:07:17 (lmgrd) Valid license server system hosts are: "license.sandia.gov"
26 10:07:17 (lmgrd) Using license file "/var/tmp/lm_TMW.dat"
------------------------------------------------------------------------




Reference:

Start Network License Manager

To start MATLAB® software on a client computer, the network license manager must be running on the server. If you configured your operating system to start the network license manager when the computer starts up, the easiest way to start the network license manager is to restart the computer on which you installed the license manager.

There are several other ways to start the license manager, depending on your platform. This topic describes these methods.

Note

The user name associated with the network license manager process should be a user that is defined locally on the computer, not defined on a network. The license manager starts up properly only if the user name can be found during the startup process on the computer, before network users are available.

Caution

Follow these recommendations when using the network license manager:

    Do not expose lmgrd or mlm to the Internet or an untrusted network.

    Start lmgrd with the options -2 -p local so that local administrator access is required to run lmdown.

Windows Systems

You can start the network license manager on Windows computers using any of the following methods:

    Use the Windows Services control panel to start or stop the network license manager, if you chose to configure it as a service during installation. On the Windows Start menu, select Settings > Control Panel > Administrative Tools > Services.

    Use the license management utility, lmtools.exe, included in your MATLAB installation in the matlabroot\etc\$ARCH folder, where $ARCH is a platform-specific subfolder. Start the lmtools.exe application and select the Start/Stop/Reread tab. 

Linux and macOS Systems

To start the network license manager daemons on a Linux or macOS computer, execute the lmstart script (located in the matlabroot/etc folder), where matlabroot represents the name of your top-level MATLAB installation folder. The lmstart script stops any currently running daemons and starts new ones.

To run lmstart on a macOS computer, open a terminal window using the Terminal application (found in /Applications/Utilities) and navigate to the /etc folder in your MATLAB installation folder:

cd /Applications/MATLAB_R2021b.app/etc

Caution

A user other than root should run the lmstart script because it is a security risk to run any program as root that does not require root permissions. The network license manager (lmgrd) does not require root permissions.

If you must start the license manager as root, use the su command to start lmgrd as a nonprivileged user, where username is a nonprivileged user.

su username -c "lmgrd -c license_file -l /var/tmp/LM_TMW.log"

Configure Network License Manager to Start Automatically on Linux Systems

To configure the network license manager to start automatically at boot time on Linux® computers, use the standard method for starting services automatically on your Linux distribution.

Start the network license manager service with the -u username option, where username represents a valid user name other than root.

Caution

For security reasons, superuser cannot be an owner of the license manager daemons.

Make sure that the network license manager starts at the very end of the system boot sequence. For the license manager to start correctly, the network must already be running. Use whatever mechanism your version of Linux provides to configure the boot sequence.
Related Topics

    Monitor Network License Manager


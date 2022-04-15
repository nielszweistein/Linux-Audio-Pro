![](https://raw.githubusercontent.com/nielszweistein/Linux-Audio-Pro/main/Linux-Audio-Stack.png)         
 
 Q: Why ?

 A: Why not !

    - using Firefox under Jack you must recompile the source code
    - using Discord under Jack is not possible !
    - using Jack client under OBS, you experiencing Xruns !
    
    The best option (for me)  is to bridge Pulseaudio and jack
 
 My Complete Audio Setup :

    - Extra Package for realtime privileges or edit /etc/security/limits.conf manually
    - Classic Mainline Kernel (not the RT !!!)  most RT capability are in mainline kernel for long time yet
    - Ardour as the Main Mixer and routing solution
    - Qjackctl for Setup Jack & Pulseaudio Bridge
    
 
 QJACKCTL SETUP :

    - REALTIME             (box checked)  - Standard kernel have RT Capability ! 
    - Select INTERFACE Hardware
    - Choose SAMPLERATE       (48000 depend HW)
             Frames/Period    (256   depend HW)
             Period/Buffer    (2     depend HW)
    - Support Midi in JACK (SEQ)  if needed  (Alsa have Midi Support)
    -
    - Interface D-BUS      (box checked)
    - Interface JACK D-BUS (box checked)
    -
    - Execute Script on startup     : "pacmd suspend true"   (to disable pulseaudio)
    - Execute Script after startup  : Custom Script to start Pulseaudio and create Named bridge
    - Execute Script after Shutdown : "pacmd suspend false"  (to restart pulseaudio after jack if poweroff)

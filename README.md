# Upload_ASM_AtmelAVR

prerequisite:
AVR-GCC
AVRDUDE

-----------------------------------------------------------------------------------------------------------------------------
Unix Shell script to assemble and upload your Assembly code to an Arduino or Atmel AVR Microcontroller

Example. 
  ./upload.sh blink
  
  Were blink is your Assembly file (blink.s).
  
To create a symlink to execute this script everywere use: 

sudo ln -s /full/path/to/your/file /usr/local/bin/name_of_new_command
chmod +x /full/path/to/your/file

 

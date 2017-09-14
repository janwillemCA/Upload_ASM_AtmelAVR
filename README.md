# Upload_ASM_AtmelAVR

## prerequisite: 
1. AVR-GCC 
1. AVRDUDE 

Unix Shell script to assemble and upload your Assembly code to an Arduino or Atmel AVR Microcontroller <br />

Example. 
 ```javascript
  ./upload.sh blink 
```  
Were blink is your Assembly file (blink.s). <br />
  
To create a symlink to execute this script everywere use:  <br />

 ```javascript
sudo ln -s /full/path/to/your/file /usr/local/bin/name_of_new_command 
chmod +x /full/path/to/your/file 
```

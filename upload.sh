#!/bin/bash
# This program needs one argument which is your Assembly file name
# Example: ./upload blink
# Your .s program will now be uploaded to your arduino

echo "Starting to upload........."

# Assemble code with avr-as

echo "Assembling......"

avr-as -g -mmcu=atmega328p -o $1.o $1.s


# Create object code

echo "Creating object code.....,"

avr-ld -o $1.elf $1.o


# Create ELF binary

echo "Creating ELF...... "

avr-objcopy -O ihex -R .eeprom $1.elf $1.hex


# Upload firmware

echo "Uploading firmware....."

avrdude -C /etc/avrdude.conf -p atmega328p -c arduino -P /dev/ttyACM0 \
	-b 115200 -D -U flash:w:$1.hex:i

echo "Done uploading."

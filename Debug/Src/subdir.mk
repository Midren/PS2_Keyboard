################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Src/sh_cmd.s 

C_SRCS += \
../Src/gpio.c \
../Src/main.c \
../Src/semihosting.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_it.c \
../Src/syscalls.c \
../Src/system_stm32f4xx.c 

OBJS += \
./Src/gpio.o \
./Src/main.o \
./Src/semihosting.o \
./Src/sh_cmd.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_it.o \
./Src/syscalls.o \
./Src/system_stm32f4xx.o 

C_DEPS += \
./Src/gpio.d \
./Src/main.d \
./Src/semihosting.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_it.d \
./Src/syscalls.d \
./Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F411xE -I"/home/midren/Documents/projects/STM32Projects/KeyBoardDriver/Inc" -I"/home/midren/Documents/projects/STM32Projects/KeyBoardDriver/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/midren/Documents/projects/STM32Projects/KeyBoardDriver/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"/home/midren/Documents/projects/STM32Projects/KeyBoardDriver/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/midren/Documents/projects/STM32Projects/KeyBoardDriver/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Src/%.o: ../Src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



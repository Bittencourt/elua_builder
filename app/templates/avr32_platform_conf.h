// eLua platform configuration

#ifndef __PLATFORM_CONF_H__
#define __PLATFORM_CONF_H__

#include "auxmods.h"
#include "board.h"
#include "stacks.h"
#include "sdramc.h"

// *****************************************************************************
// Define here what components you want for this platform

$build_xmodem #define BUILD_XMODEM
$build_shell #define BUILD_SHELL
$build_romfs #define BUILD_ROMFS
$build_term #define BUILD_TERM
$build_con_generic #define BUILD_CON_GENERIC
$build_rpc #define BUILD_RPC

// *****************************************************************************
// UART/Timer IDs configuration data (used in main.c)

#define CON_UART_ID         0
#define CON_UART_SPEED      115200
#define CON_TIMER_ID        0
#define TERM_LINES          25
#define TERM_COLS           80

// *****************************************************************************
// Auxiliary libraries that will be compiled for this platform

#ifdef BUILD_RPC
#define RPCLINE _ROM( AUXLIB_RPC, luaopen_rpc, rpc_map )
#else
#define RPCLINE
#endif

#define LUA_PLATFORM_LIBS_ROM\
  _ROM( AUXLIB_PD, luaopen_pd, pd_map )\
  _ROM( AUXLIB_UART, luaopen_uart, uart_map )\
  _ROM( AUXLIB_PIO, luaopen_pio, pio_map )\
  _ROM( AUXLIB_TMR, luaopen_tmr, tmr_map )\
  _ROM( AUXLIB_TERM, luaopen_term, term_map )\
  _ROM( AUXLIB_CPU, luaopen_cpu, cpu_map )\
  RPCLINE\
  _ROM( AUXLIB_BIT, luaopen_bit, bit_map )\
  _ROM( AUXLIB_PACK, luaopen_pack, pack_map )\
  _ROM( LUA_MATHLIBNAME, luaopen_math, math_map )

// *****************************************************************************
// Configuration data

// Virtual timers (0 if not used)
#define VTMR_NUM_TIMERS       4
#define VTMR_FREQ_HZ          4

// Number of resources (0 if not available/not implemented)
#define NUM_PIO               5
#define NUM_SPI               0
#define NUM_UART              4
#if VTMR_NUM_TIMERS > 0
#define NUM_TIMER             2
#else
#define NUM_TIMER             3
#endif
#define NUM_PWM               0
#define NUM_ADC               0
#define NUM_CAN               0

// RPC boot options
#define RPC_UART_ID           CON_UART_ID
#define RPC_TIMER_ID          CON_TIMER_ID
#define RPC_UART_SPEED        CON_UART_SPEED

// Enable RX buffering on UART
#define BUF_ENABLE_UART
#define CON_BUF_SIZE          BUF_SIZE_128
// REMEMBER to change next line if buffering is enabled and CON_UART_ID is not 0!
#define CON_UART_IRQ          AVR32_USART0_IRQ

// CPU frequency (needed by the CPU module, 0 if not used)
#define CPU_FREQUENCY         REQ_CPU_FREQ

// PIO prefix ('0' for P0, P1, ... or 'A' for PA, PB, ...)
#define PIO_PREFIX            'A'
// Pins per port configuration:
// #define PIO_PINS_PER_PORT (n) if each port has the same number of pins, or
// #define PIO_PIN_ARRAY { n1, n2, ... } to define pins per port in an array
// Use #define PIO_PINS_PER_PORT 0 if this isn't needed
#define PIO_PIN_ARRAY         { 31, 32, 6, 32, 8 }

// Allocator data: define your free memory zones here in two arrays
// (start address and end address)
#define MEM_START_ADDRESS     { ( void* )end, ( void* )SDRAM }
#define MEM_END_ADDRESS       { ( void* )( 0x10000 - STACK_SIZE_TOTAL - 1 ), ( void* )( SDRAM + SDRAM_SIZE - 1 ) }

// *****************************************************************************
// CPU constants that should be exposed to the eLua "cpu" module

#endif // #ifndef __PLATFORM_CONF_H__

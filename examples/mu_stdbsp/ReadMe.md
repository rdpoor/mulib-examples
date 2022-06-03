# mu_stdbsp: standard Board Support Package for mulib projects

`mu_stdbsp` defines an API to accelerate the development of useful mulib
applications.  In short, if your platform already has implemented `mu_stdbsp`
for your platform, you can immediately run all the tutorials and examples
without writing any additional code.

If your platform hasn't yet implemented `mu_stdbsp`, you only need to write a
few well-defined -- albeit platform-specific -- functions.

## The `mu_stdbsp` api

NOTE: This is preliminary and subject to change.

```
/**
 * @brief Perform platform-specific initialization.  Called once at startup.
 */
void mu_stdbsp_init(void);
```

### Support for a "standard LED"
```
/**
 * @brief Turn on the standard LED
 */
void mu_stdbsp_led_on(void);

/**
 * @brief Turn off the standard LED
 */
void mu_stdbsp_led_off(void);

/**
 * @brief Toggle the standard LED
 */
void mu_stdbsp_led_toggle(void);
```

### Support for a "standard Button"
```
/**
 * @brief Return true if the "standard button" is pressed
 */
bool mu_stdbsp_button_is_pressed(void);

/**
 * @brief Register a mu_task to be called whenever the standard button changes
 * state.
 */
void mu_stdbsp_register_button_task(mu_task_t *on_change);
```
### Support for sending serial data
```
/**
 * @brief Return true if the next call to `mu_stdbsp_serial_tx_char()` will not
 * block.
 */
bool mu_stdbsp_serial_tx_is_ready(void);

/**
 * @brief Transmit a byte over the "standard serial" line.  Note that this may
 * block.  See also `mu_stdbsp_serial_tx_is_ready()`.
 */
mu_stdbsp_err_t mu_stdbsp_serial_tx_char(uint8_t char);

/**
 * @brief Transmit a string over the standard serial line, calling the
 * `on_completion` task when the last byte has been sent.
 */
mu_stdbsp_err_t mu_stdbsp_serial_tx(mu_str_t *txbuf, mu_task_t *on_completion);
```
### Support for receiving serial data
```
/**
 * @brief Return true if the next call to `mu_stdbsp_serial_rx_char()` will not
 * block.
 */
bool mu_stdbsp_serial_rx_is_ready(void);

/**
 * @brief Receive a byte over the serial line.  Note that this may block.  See
 * also `mu_stdbsp_serial_rx_is_ready()`.
 */
mu_stdbsp_err_t mu_stdbsp_serial_rx_char(uint8_t *char);

/**
 * @brief Start receiving bytes over the serial line, calling the on_reception
 * task when one or more bytes have been written into rxbuf.  A null value for
 * rx_buf or for on_reception will stop the receive process.
 */
mu_stdbsp_err_t mu_stdbsp_serial_rx(mu_str_t *rxbuf, mu_task_t *on_reception);
```
### Support for low-power sleep and wake
```
/**
 * @brief Set an alarm that will trigger when `mu_time_now()` equals `at`.
 * Only one alarm is in effect at a time.  For multiple alarms, see `mu_sched`.
 */
void mu_stdbsp_set_alarm(mu_time_t at);

/**
 * @brief Unset any alarm.
 */
void mu_stdbsp_clear_alarm(mu_time_t at);

/**
 * @brief Put the processor into a low-power mode, waking on an external
 * interrupt or when the time specified by mu_stdbsp_set_alarm() arrives.
 */
void mu_stdbsp_sleep(mu_task_t *on_wake);
```

## `test_stdbsp`

`test_stdbsp` is an interactive app that exercises the `mu_stdbsp` API.  It
uses the serial output to prompt users to verify changes in LEDs, responses 
to button inputs and serial inputs, and to verify accurate timing.

In other words, if your implementation of `mu_stdlib` passes all the tests in
`test_stdbsp`, you can have high confidence it will work for the rest of the
mulib applications.

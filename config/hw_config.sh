# Audio jack configuration
dev=/sys/devices/platform/msm_ssbi.0/pm8058-core/simple_remote_pf/simple_remote
echo 0,201 > $dev/accessory_min_vals
echo 200,1599 > $dev/accessory_max_vals
echo 0,100,280,500 > $dev/button_min_vals
echo 99,199,399,699 > $dev/button_max_vals
echo 512 > $dev/btn_trig_period_freq  # Button Period Freq(Hz)
echo 16 > $dev/btn_trig_period_time   # Button Period Time(Cycle)
echo 512 > $dev/btn_trig_hyst_freq    # Button Hysteresis Freq(Hz)
echo 16 > $dev/btn_trig_hyst_time     # Button Hysteresis Time(Cycle)
echo 400 > $dev/btn_trig_level

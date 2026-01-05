.class public interface abstract Lcom/android/server/input/NativeInputManagerService;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract canDispatchToDisplay(II)Z
.end method

.method public abstract cancelCurrentTouch()V
.end method

.method public abstract cancelVibrate(II)V
.end method

.method public abstract changeKeyboardLayoutAssociation()V
.end method

.method public abstract changeTypeAssociation()V
.end method

.method public abstract changeUniqueIdAssociation()V
.end method

.method public abstract createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;
.end method

.method public abstract createInputMonitor(ILjava/lang/String;II)Landroid/view/InputChannel;
.end method

.method public abstract disableInputDevice(I)V
.end method

.method public abstract disableSensor(II)V
.end method

.method public abstract displayRemoved(I)V
.end method

.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract enableFlowPointer(Z)V
.end method

.method public abstract enableInputDevice(I)V
.end method

.method public abstract enableSensor(IIII)Z
.end method

.method public abstract enableWirelessKeyboardShare(Z)V
.end method

.method public abstract flushSensor(II)Z
.end method

.method public abstract forceFadeIcon(I)V
.end method

.method public abstract forceHideCursor(Z)V
.end method

.method public abstract getBatteryCapacity(I)I
.end method

.method public abstract getBatteryDevicePath(I)Ljava/lang/String;
.end method

.method public abstract getBatteryStatus(I)I
.end method

.method public abstract getBluetoothAddress(I)Ljava/lang/String;
.end method

.method public abstract getGlobalMetaState(I)I
.end method

.method public abstract getInboundQueueLength()I
.end method

.method public abstract getInputDevicePath(I)Ljava/lang/String;
.end method

.method public abstract getKeyCodeForKeyLocation(II)I
.end method

.method public abstract getKeyCodeState(III)I
.end method

.method public abstract getLastUsedInputDeviceId()I
.end method

.method public abstract getLightColor(II)I
.end method

.method public abstract getLightPlayerId(II)I
.end method

.method public abstract getLights(I)Ljava/util/List;
.end method

.method public abstract getMotionIdleTimeMillis(Z)J
.end method

.method public abstract getMouseCursorPosition(I)[F
.end method

.method public abstract getMousePointerSpeed()I
.end method

.method public abstract getScanCodeState(III)I
.end method

.method public abstract getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
.end method

.method public abstract getSwitchState(III)I
.end method

.method public abstract getSysfsRootPath(I)Ljava/lang/String;
.end method

.method public abstract getTouchpadHardwareProperties(I)Lcom/android/server/input/TouchpadHardwareProperties;
.end method

.method public abstract getVibratorIds(I)[I
.end method

.method public abstract hasKeys(II[I[Z)Z
.end method

.method public abstract injectInputEvent(Landroid/view/InputEvent;ZIIIIII)I
.end method

.method public abstract isUidTouched(I)Z
.end method

.method public abstract isVibrating(I)Z
.end method

.method public abstract monitor()V
.end method

.method public abstract notifyPortAssociationsChanged()V
.end method

.method public abstract notifyWindowDragStarted()V
.end method

.method public abstract pilferPointers(Landroid/os/IBinder;)V
.end method

.method public abstract reloadCalibration()V
.end method

.method public abstract reloadDeviceAliases()V
.end method

.method public abstract reloadKeyboardLayouts()V
.end method

.method public abstract reloadPointerIcons()V
.end method

.method public abstract removeInputChannel(Landroid/os/IBinder;)V
.end method

.method public abstract requestPointerCapture(Landroid/os/IBinder;Z)V
.end method

.method public abstract resetLockedModifierState()V
.end method

.method public abstract setAccessibilityBounceKeysThreshold(I)V
.end method

.method public abstract setAccessibilityPointerMotionFilterEnabled(Z)V
.end method

.method public abstract setAccessibilitySlowKeysThreshold(I)V
.end method

.method public abstract setAccessibilityStickyKeysEnabled(Z)V
.end method

.method public abstract setBackButtonBehavior(I)V
.end method

.method public abstract setCoverTestModeType(I)V
.end method

.method public abstract setCoverVerify(I)V
.end method

.method public abstract setCursorPosition(III)V
.end method

.method public abstract setDexMode(ZII)V
.end method

.method public abstract setDisplayDpi(FF)V
.end method

.method public abstract setDisplayEligibilityForPointerCapture(IZ)V
.end method

.method public abstract setDisplayFolded(Z)V
.end method

.method public abstract setDisplayTopology(Landroid/hardware/display/DisplayTopologyGraph;)V
.end method

.method public abstract setDisplayViewports([Landroid/hardware/display/DisplayViewport;)V
.end method

.method public abstract setEnableTapToClick(Z)V
.end method

.method public abstract setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
.end method

.method public abstract setFocusedDisplay(I)V
.end method

.method public abstract setFoldingState(I)V
.end method

.method public abstract setForwardButtonBehavior(I)V
.end method

.method public abstract setInTouchMode(ZIIZI)Z
.end method

.method public abstract setInputDispatchMode(ZZ)V
.end method

.method public abstract setInputFilterEnabled(Z)V
.end method

.method public abstract setInputMetaData(II)V
.end method

.method public abstract setInputMethodConnectionIsActive(Z)V
.end method

.method public abstract setInteractiveForInternalDisplay(Z)V
.end method

.method public abstract setKeyRemapping([I[I)V
.end method

.method public abstract setKeyRepeatConfiguration(IIZ)V
.end method

.method public abstract setLightColor(III)V
.end method

.method public abstract setLightPlayerId(III)V
.end method

.method public abstract setMaximumObscuringOpacityForTouch(F)V
.end method

.method public abstract setMinTimeBetweenUserActivityPokes(J)V
.end method

.method public abstract setMotionClassifierEnabled(Z)V
.end method

.method public abstract setMouseAccelerationEnabled(Z)V
.end method

.method public abstract setMouseReverseVerticalScrollingEnabled(Z)V
.end method

.method public abstract setMouseScalingEnabled(IZ)V
.end method

.method public abstract setMouseScrollingAccelerationEnabled(Z)V
.end method

.method public abstract setMouseSwapPrimaryButtonEnabled(Z)V
.end method

.method public abstract setMultiControlOutOfFocus(Z)V
.end method

.method public abstract setNonInteractiveDisplays([I)V
.end method

.method public abstract setPenHovering(Z)V
.end method

.method public abstract setPenModeOnDex(I)V
.end method

.method public abstract setPointerDisplayId(I)V
.end method

.method public abstract setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
.end method

.method public abstract setPointerIconVisibility(IZ)V
.end method

.method public abstract setPointerSpeed(I)V
.end method

.method public abstract setPrimaryMouseButtonLocation(I)V
.end method

.method public abstract setReverseSwipeGesture(Z)V
.end method

.method public abstract setScrollSpeed(I)V
.end method

.method public abstract setSecondaryButtonBehavior(I)V
.end method

.method public abstract setShouldNotifyTouchpadHardwareState(Z)V
.end method

.method public abstract setShowHovering(Z)V
.end method

.method public abstract setShowTouches(Z)V
.end method

.method public abstract setStylusButtonMotionEventsEnabled(Z)V
.end method

.method public abstract setStylusPointerIconEnabled(Z)V
.end method

.method public abstract setSystemUiLightsOut(Z)V
.end method

.method public abstract setSystemUiLightsOutForDisplay(ZI)V
.end method

.method public abstract setTalkBack(Z)V
.end method

.method public abstract setTertiaryButtonBehavior(I)V
.end method

.method public abstract setTouchpadAccelerationEnabled(Z)V
.end method

.method public abstract setTouchpadNaturalScrollingEnabled(Z)V
.end method

.method public abstract setTouchpadPointerSpeed(I)V
.end method

.method public abstract setTouchpadRightClickZoneEnabled(Z)V
.end method

.method public abstract setTouchpadSystemGesturesEnabled(Z)V
.end method

.method public abstract setTouchpadTapDraggingEnabled(Z)V
.end method

.method public abstract setTouchpadTapToClickEnabled(Z)V
.end method

.method public abstract setTouchpadThreeFingerTapShortcutEnabled(Z)V
.end method

.method public abstract setTspFeatures(I)V
.end method

.method public abstract setUseMouseAcceleration(Z)V
.end method

.method public abstract showAllTouches(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract sysfsNodeChanged(Ljava/lang/String;)V
.end method

.method public abstract toggleCapsLock(I)V
.end method

.method public abstract transferTouch(Landroid/os/IBinder;I)Z
.end method

.method public abstract transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;ZZ)Z
.end method

.method public abstract updateInputMetaState(IZ)V
.end method

.method public abstract verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
.end method

.method public abstract vibrate(I[J[III)V
.end method

.method public abstract vibrateCombined(I[JLandroid/util/SparseArray;II)V
.end method

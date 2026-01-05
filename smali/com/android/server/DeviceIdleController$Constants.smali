.class public final Lcom/android/server/DeviceIdleController$Constants;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public DNA_REQUEST_VERSION:J

.field public FLEX_TIME_SHORT:J

.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_FACTOR:F

.field public LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

.field public LIGHT_IDLE_INCREASE_LINEARLY:Z

.field public LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

.field public LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

.field public LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

.field public LIGHT_IDLE_TIMEOUT:J

.field public LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

.field public LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

.field public LIGHT_MAX_IDLE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MIN_DEEP_MAINTENANCE_TIME:J

.field public MIN_LIGHT_MAINTENANCE_TIME:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public MOTION_INACTIVE_TIMEOUT_FLEX:J

.field public NOTIFICATION_ALLOWLIST_DURATION_MS:J

.field public QUICK_DOZE_DELAY_TIMEOUT:J

.field public SENSING_TIMEOUT:J

.field public SKIP_LOCATING:Z

.field public SKIP_SENSING:Z

.field public SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public USE_MODE_MANAGER:Z

.field public USE_WINDOW_ALARMS:Z

.field public WAIT_FOR_UNLOCK:Z

.field public final mDefaultDnaRequestVersion:J

.field public final mDefaultFlexTimeShort:J

.field public final mDefaultIdleAfterInactiveTimeout:J

.field public final mDefaultIdleFactor:F

.field public final mDefaultIdlePendingFactor:F

.field public final mDefaultIdlePendingTimeout:J

.field public final mDefaultIdleTimeout:J

.field public final mDefaultInactiveTimeout:J

.field public final mDefaultLightIdleAfterInactiveTimeout:J

.field public final mDefaultLightIdleFactor:F

.field public final mDefaultLightIdleFlexLinearIncreaseFactorMs:J

.field public final mDefaultLightIdleIncreaseLinearly:Z

.field public final mDefaultLightIdleLinearIncreaseFactorMs:J

.field public final mDefaultLightIdleMaintenanceMaxBudget:J

.field public final mDefaultLightIdleMaintenanceMinBudget:J

.field public final mDefaultLightIdleTimeout:J

.field public final mDefaultLightIdleTimeoutInitialFlex:J

.field public final mDefaultLightIdleTimeoutMaxFlex:J

.field public final mDefaultLightMaxIdleTimeout:J

.field public final mDefaultLocatingTimeout:J

.field public final mDefaultLocationAccuracy:F

.field public final mDefaultMaxIdlePendingTimeout:J

.field public final mDefaultMaxIdleTimeout:J

.field public final mDefaultMaxTempAppAllowlistDurationMs:J

.field public final mDefaultMinDeepMaintenanceTime:J

.field public final mDefaultMinLightMaintenanceTime:J

.field public final mDefaultMinTimeToAlarm:J

.field public final mDefaultMmsTempAppAllowlistDurationMs:J

.field public final mDefaultMotionInactiveTimeout:J

.field public final mDefaultMotionInactiveTimeoutFlex:J

.field public final mDefaultNotificationAllowlistDurationMs:J

.field public final mDefaultQuickDozeDelayTimeout:J

.field public final mDefaultSensingTimeout:J

.field public final mDefaultSkipLocating:Z

.field public final mDefaultSkipSensing:Z

.field public final mDefaultSmsTempAppAllowlistDurationMs:J

.field public final mDefaultUseModeManager:Z

.field public final mDefaultUseWindowAlarms:Z

.field public final mDefaultWaitForUnlock:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSmallBatteryDevice:Z

.field public final mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iput-object v1, v0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    move-object/from16 v3, p2

    invoke-direct {v0, v3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-wide/32 v3, 0xea60

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    const-wide/32 v5, 0x3a980

    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    const-wide/32 v7, 0x493e0

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    const-wide/32 v9, 0xdbba0

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    const/high16 v11, 0x40000000    # 2.0f

    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    const-wide/16 v12, 0x1388

    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    const-wide/16 v14, 0x7530

    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    const-wide/32 v12, 0x1b7740

    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    const/high16 v9, 0x41a00000    # 20.0f

    iput v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    const-wide/32 v9, 0x927c0

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    const-wide/32 v9, 0x36ee80

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    const-wide/32 v9, 0x1499700

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    const-wide/16 v9, 0x4e20

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultDnaRequestVersion:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    const-wide/32 v9, 0xdbba0

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    iget-boolean v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    const-wide/16 v9, 0x1388

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    const/high16 v5, 0x41a00000    # 20.0f

    iput v5, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    const-wide/32 v5, 0x927c0

    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    const-wide/32 v9, 0x36ee80

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    const-wide/32 v9, 0x1499700

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    iput v5, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    const-wide/16 v5, 0x4e20

    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    new-instance v5, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    invoke-direct {v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;-><init>()V

    iput-object v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    iput-object v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10e01af

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    const v6, 0x10e01b6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    const v6, 0x10e01be

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    const v6, 0x10e01bc

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    const v6, 0x10e01bd

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    const v6, 0x10e01b7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    const v6, 0x11102c7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    const v6, 0x10e01b9

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    const v6, 0x10e01b8

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    const v6, 0x10e01bf

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    const v6, 0x10e01bb

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    const v6, 0x10e01ba

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    const v6, 0x10e01c6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    const v6, 0x10e01c5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    const v6, 0x10e01b5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    const v6, 0x10e01cd

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    const v6, 0x10e01c0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    const v6, 0x10e01c1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    const v6, 0x10e01ca

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    const v6, 0x10e01c9

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    const v6, 0x10e01b0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    const v6, 0x10e01b3

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    const v6, 0x10e01c2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    const v6, 0x10e01b2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    const v6, 0x10e01cc

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    const v6, 0x10e01b4

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    const v6, 0x10e01c3

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    const v6, 0x10e01b1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    const v6, 0x10e01c7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    const v6, 0x10e01c4

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    const v6, 0x10e01c8

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    const v6, 0x10e01ce

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    const v6, 0x10e01cb

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    const v6, 0x11102cc

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    const v6, 0x11102cb

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    const v6, 0x11102ca

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    const v6, 0x11102c9

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    const v6, 0x11102c8

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    const v6, 0x10e01ae

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultDnaRequestVersion:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v1, :cond_0

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    :cond_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const-string/jumbo v3, "device_idle"

    invoke-static {v3, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string/jumbo v1, "device_idle_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->updateSettingsConstantLocked()V

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    iput-object v1, v5, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "flex_time_short"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    const-string/jumbo v4, "light_after_inactive_to"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    const-string/jumbo v4, "light_idle_to"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    const-string/jumbo v4, "light_idle_to_initial_flex"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    const-string/jumbo v4, "light_max_idle_to_flex"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    const-string/jumbo v4, "light_idle_factor"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_increase_linearly"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_linear_increase_factor_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_flex_linear_increase_factor_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    const-string/jumbo v4, "light_idle_maintenance_min_budget"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    const-string/jumbo v4, "light_idle_maintenance_max_budget"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    const-string/jumbo v4, "min_light_maintenance_time"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    const-string/jumbo v4, "min_deep_maintenance_time"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    const-string/jumbo v4, "inactive_to"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v4, "sensing_to"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    const-string/jumbo v4, "locating_to"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    const-string/jumbo v4, "location_accuracy"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v2, "m"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "motion_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v4, "motion_inactive_to_flex"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    const-string/jumbo v4, "idle_after_inactive_to"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    const-string/jumbo v4, "idle_pending_to"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    const-string/jumbo v4, "max_idle_pending_to"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    const-string/jumbo v4, "idle_pending_factor"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "quick_doze_delay_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    const-string/jumbo v4, "idle_to"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    const-string/jumbo v4, "max_idle_to"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    const-string/jumbo v4, "idle_factor"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_time_to_alarm"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    const-string/jumbo v4, "max_temp_app_allowlist_duration_ms"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    const-string/jumbo v4, "mms_temp_app_allowlist_duration_ms"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    const-string/jumbo v4, "sms_temp_app_allowlist_duration_ms"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    const-string/jumbo v4, "notification_allowlist_duration_ms"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    const-string/jumbo v4, "wait_for_unlock"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    const-string/jumbo v3, "use_window_alarms"

    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    const-string/jumbo v3, "use_mode_manager"

    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    const-string/jumbo v3, "skip_sensing"

    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    const-string/jumbo v3, "skip_locating"

    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    const-string/jumbo v3, "dna_request_version"

    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateSettingsConstantLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    iput-object p1, v1, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateConstantsLocked()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "flex_time_short"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_after_inactive_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_idle_to_initial_flex"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_max_idle_to_flex"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_idle_factor"

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_idle_increase_linearly"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_idle_linear_increase_factor_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_idle_flex_linear_increase_factor_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_max_idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_idle_maintenance_min_budget"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "light_idle_maintenance_max_budget"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "min_light_maintenance_time"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "min_deep_maintenance_time"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    const-wide/32 v1, 0xea60

    if-eqz v0, :cond_1

    move-wide v3, v1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    :goto_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v5, "inactive_to"

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v3, "sensing_to"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v3, "locating_to"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v3, "location_accuracy"

    iget v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    invoke-virtual {v0, v4, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v3, "motion_inactive_to"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v3, "motion_inactive_to_flex"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    :goto_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v3, "idle_after_inactive_to"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "idle_pending_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "max_idle_pending_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "idle_pending_factor"

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "quick_doze_delay_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "max_idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "idle_factor"

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "min_time_to_alarm"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "max_temp_app_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "mms_temp_app_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "sms_temp_app_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "notification_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "wait_for_unlock"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "use_window_alarms"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "use_mode_manager"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "skip_sensing"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "skip_locating"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const-string/jumbo v1, "dna_request_version"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultDnaRequestVersion:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    return-void
.end method

.method public final updateSettingsConstantLocked()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "device_idle_constants"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, p0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "DeviceIdleController"

    const-string v1, "Bad device idle settings"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

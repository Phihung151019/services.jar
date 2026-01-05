.class public final Lcom/android/server/BatteryService$Shell;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$Shell;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 25

    move-object/from16 v0, p1

    const-string/jumbo v1, "current_average"

    const-string/jumbo v2, "present"

    const-string/jumbo v3, "ac"

    const-string/jumbo v4, "usb"

    const-string/jumbo v5, "dock"

    const-string/jumbo v7, "temp"

    const-string/jumbo v8, "level"

    const-string/jumbo v10, "current_now"

    const-string/jumbo v12, "counter"

    const-string/jumbo v14, "invalid"

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v11, p0

    iget-object v13, v11, Lcom/android/server/BatteryService$Shell;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v15, "Unknown set option: "

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/16 v21, 0x1

    invoke-virtual {v11}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    const/16 v22, -0x1

    const-string v6, "BatteryService"

    const-string/jumbo v11, "No property specified"

    move-object/from16 v23, v6

    const-string/jumbo v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    move-object/from16 v24, v15

    :goto_0
    move/from16 v15, v22

    goto/16 :goto_2

    :sswitch_0
    move-object/from16 v24, v15

    const-string/jumbo v15, "sleepstatus"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_1

    :cond_1
    const/4 v15, 0x6

    goto :goto_2

    :sswitch_1
    move-object/from16 v24, v15

    const-string/jumbo v15, "reset"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v15, v16

    goto :goto_2

    :sswitch_2
    move-object/from16 v24, v15

    const-string/jumbo v15, "set"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v15, v17

    goto :goto_2

    :sswitch_3
    move-object/from16 v24, v15

    const-string/jumbo v15, "get"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v15, v18

    goto :goto_2

    :sswitch_4
    move-object/from16 v24, v15

    const-string/jumbo v15, "sleeptime"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v15, v19

    goto :goto_2

    :sswitch_5
    move-object/from16 v24, v15

    const-string/jumbo v15, "suspend_input"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_1

    :cond_6
    move/from16 v15, v21

    goto :goto_2

    :sswitch_6
    move-object/from16 v24, v15

    const-string/jumbo v15, "unplug"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    :goto_1
    goto :goto_0

    :cond_7
    move/from16 v15, v20

    :goto_2
    packed-switch v15, :pswitch_data_0

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v1, v6, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    move/from16 v0, v21

    goto :goto_3

    :cond_8
    move/from16 v0, v20

    :goto_3
    invoke-virtual {v13, v9, v0}, Lcom/android/server/BatteryService;->resetBattery(Ljava/io/PrintWriter;Z)V

    goto/16 :goto_11

    :pswitch_1
    const/4 v15, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v0

    move/from16 p1, v0

    invoke-virtual {v13}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v22

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    const-string/jumbo v0, "No value specified"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v22

    :cond_a
    :try_start_0
    iget-boolean v11, v13, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v11, :cond_b

    iget-object v11, v13, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v15, v13, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v11, v15}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_7
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xb

    goto/16 :goto_5

    :sswitch_8
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x7

    goto/16 :goto_5

    :sswitch_9
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    goto :goto_5

    :sswitch_a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x6

    goto :goto_5

    :sswitch_b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xa

    goto :goto_5

    :sswitch_c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v1, v17

    goto :goto_5

    :sswitch_d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v1, v19

    goto :goto_5

    :sswitch_e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v1, v21

    goto :goto_5

    :sswitch_f
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v1, v20

    goto :goto_5

    :sswitch_10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x9

    goto :goto_5

    :sswitch_11
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v1, v16

    goto :goto_5

    :sswitch_12
    const-string/jumbo v1, "wireless"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v1, v18

    goto :goto_5

    :cond_c
    :goto_4
    move/from16 v1, v22

    :goto_5
    packed-switch v1, :pswitch_data_1

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto/16 :goto_b

    :pswitch_3
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    :pswitch_4
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    goto/16 :goto_b

    :pswitch_5
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    goto/16 :goto_b

    :pswitch_6
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    goto/16 :goto_b

    :pswitch_7
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v1, v22

    if-lt v0, v1, :cond_d

    const/16 v1, 0x64

    if-gt v0, v1, :cond_d

    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    goto/16 :goto_b

    :cond_d
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :pswitch_8
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    goto :goto_b

    :pswitch_9
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_e

    move/from16 v1, v21

    goto :goto_6

    :cond_e
    move/from16 v1, v20

    :goto_6
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    goto :goto_b

    :pswitch_a
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_f

    move/from16 v1, v21

    goto :goto_7

    :cond_f
    move/from16 v1, v20

    :goto_7
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    goto :goto_b

    :pswitch_b
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v1, v21

    goto :goto_8

    :cond_10
    move/from16 v1, v20

    :goto_8
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    goto :goto_b

    :pswitch_c
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_11

    move/from16 v1, v21

    goto :goto_9

    :cond_11
    move/from16 v1, v20

    :goto_9
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    goto :goto_b

    :pswitch_d
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    move/from16 v1, v21

    goto :goto_a

    :cond_12
    move/from16 v1, v20

    :goto_a
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    :goto_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v3, v21

    :try_start_1
    iput-boolean v3, v13, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    move/from16 v0, v20

    :goto_c
    invoke-virtual {v13, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    if-eqz v9, :cond_14

    if-eqz v0, :cond_14

    iget v0, v13, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_14
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string v0, "Bad value: "

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, v23

    invoke-static {v15, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v20, -0x1

    goto/16 :goto_11

    :pswitch_e
    move-object/from16 v15, v23

    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_15

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v22, -0x1

    return v22

    :cond_15
    const/16 v21, 0x1

    const/16 v22, -0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    iget-object v0, v13, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    :try_start_3
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/health/HealthServiceWrapper;->scheduleUpdate()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    const-string/jumbo v11, "Unable to update health service data."

    invoke-static {v15, v11, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    iget-object v0, v13, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    move-object v11, v1

    move-object v15, v2

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    goto :goto_e

    :cond_16
    move-object v11, v1

    move-object v15, v2

    :goto_e
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    goto/16 :goto_f

    :sswitch_13
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_f

    :cond_17
    const/16 v22, 0xb

    goto/16 :goto_f

    :sswitch_14
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_f

    :cond_18
    const/16 v22, 0xa

    goto/16 :goto_f

    :sswitch_15
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_f

    :cond_19
    const/16 v0, 0x9

    move/from16 v22, v0

    goto/16 :goto_f

    :sswitch_16
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_f

    :cond_1a
    const/16 v22, 0x8

    goto/16 :goto_f

    :sswitch_17
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_f

    :cond_1b
    const/16 v22, 0x7

    goto :goto_f

    :sswitch_18
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_f

    :cond_1c
    const/16 v22, 0x6

    goto :goto_f

    :sswitch_19
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_f

    :cond_1d
    move/from16 v22, v16

    goto :goto_f

    :sswitch_1a
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_f

    :cond_1e
    move/from16 v22, v17

    goto :goto_f

    :sswitch_1b
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_f

    :cond_1f
    move/from16 v22, v18

    goto :goto_f

    :sswitch_1c
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_f

    :cond_20
    move/from16 v22, v19

    goto :goto_f

    :sswitch_1d
    const-string/jumbo v0, "status"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_f

    :cond_21
    const/16 v22, 0x1

    goto :goto_f

    :sswitch_1e
    const-string/jumbo v0, "wireless"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_f

    :cond_22
    move/from16 v22, v20

    :goto_f
    packed-switch v22, :pswitch_data_2

    const-string/jumbo v0, "Unknown get option: "

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_f
    iget v0, v13, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_11

    :pswitch_10
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_11

    :pswitch_11
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_11

    :pswitch_12
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_11

    :pswitch_13
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_11

    :pswitch_14
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_11

    :pswitch_15
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_11

    :pswitch_16
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_11

    :pswitch_17
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_11

    :pswitch_18
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_11

    :pswitch_19
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_11

    :pswitch_1a
    iget-object v0, v13, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_11

    :pswitch_1b
    const-string/jumbo v1, "[onShellCommand]cmd:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "user build cannot use this cmd"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :pswitch_1c
    invoke-virtual {v13}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v6, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_23

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    goto :goto_11

    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "battery suspend_input is only supported on debuggable builds"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    move/from16 v3, v21

    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v1, v6, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    and-int/2addr v0, v3

    if-eqz v0, :cond_24

    goto :goto_10

    :cond_24
    move/from16 v3, v20

    :goto_10
    invoke-virtual {v13, v9, v3}, Lcom/android/server/BatteryService;->unplugBattery(Ljava/io/PrintWriter;Z)V

    :goto_11
    return v20

    nop

    :sswitch_data_0
    .sparse-switch
        -0x32165859 -> :sswitch_6
        -0x204dc1f9 -> :sswitch_5
        -0xb3c1dc -> :sswitch_4
        0x18f56 -> :sswitch_3
        0x1bc62 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x5c164189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_e
        :pswitch_1
        :pswitch_0
        :pswitch_1b
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x3b9b7862 -> :sswitch_12
        -0x3532300e -> :sswitch_11
        -0x169c46a9 -> :sswitch_10
        -0x12f88745 -> :sswitch_f
        0xc22 -> :sswitch_e
        0x1c584 -> :sswitch_d
        0x2f2233 -> :sswitch_c
        0x3643d4 -> :sswitch_b
        0x6219b84 -> :sswitch_a
        0x23db3310 -> :sswitch_9
        0x391755fc -> :sswitch_8
        0x74cff1f7 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x3b9b7862 -> :sswitch_1e
        -0x3532300e -> :sswitch_1d
        -0x169c46a9 -> :sswitch_1c
        -0x12f88745 -> :sswitch_1b
        0xc22 -> :sswitch_1a
        0x1c584 -> :sswitch_19
        0x2f2233 -> :sswitch_18
        0x3643d4 -> :sswitch_17
        0x6219b84 -> :sswitch_16
        0x23db3310 -> :sswitch_15
        0x391755fc -> :sswitch_14
        0x74cff1f7 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "Battery service (battery) commands:"

    const-string v1, "  help"

    const-string v2, "    Print this help text."

    const-string v3, "  get [-f] [ac|usb|wireless|dock|status|level|temp|present|counter|invalid|current_now|current_average]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Gets the value of a battery state."

    const-string v1, "    -f: force to get the latest property value."

    const-string v2, "  set [-f] [ac|usb|wireless|dock|status|level|temp|present|counter|invalid|current_now|current_average] <value>"

    const-string v3, "    Force a battery property value, freezing battery state."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    const-string v1, "  unplug [-f]"

    const-string v2, "    Force battery unplugged, freezing battery state."

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "  reset [-f]"

    const-string v2, "    Unfreeze battery state, returning to current hardware values."

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "  suspend_input"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Suspend charging even if plugged in. "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

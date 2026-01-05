.class public final Lcom/android/server/hdmi/HdmiControlShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlShellCommand$1;-><init>(Lcom/android/server/hdmi/HdmiControlShellCommand;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    return-void
.end method


# virtual methods
.method public final handleShellCommand(Ljava/lang/String;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "set"

    const-string/jumbo v3, "get"

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x6

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    const-string/jumbo v11, "off"

    const-string/jumbo v12, "on"

    const-string/jumbo v13, "Unknown operation: "

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :goto_0
    move/from16 v4, v16

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v4, "cec_setting"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v4, "vendorcommand"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "otp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v9

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "deviceselect"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "setsystemaudiomode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "setsam"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    move v4, v7

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "setarc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    move v4, v8

    goto :goto_1

    :sswitch_7
    const-string/jumbo v4, "onetouchplay"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    move v4, v14

    goto :goto_1

    :sswitch_8
    const-string/jumbo v4, "history_size"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move v4, v15

    :goto_1
    packed-switch v4, :pswitch_data_0

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v1

    if-lt v1, v14, :cond_b

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, " = "

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->setCecSettingIntValue(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    goto/16 :goto_8

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :catch_1
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected at least 1 argument (operation)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v1

    if-gt v9, v1, :cond_16

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    move v11, v15

    move/from16 v3, v16

    move v4, v3

    :goto_2
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :goto_3
    move/from16 v12, v16

    goto/16 :goto_4

    :sswitch_9
    const-string v12, "--args"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_3

    :cond_c
    const/4 v12, 0x7

    goto :goto_4

    :sswitch_a
    const-string v12, "--id"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    goto :goto_3

    :cond_d
    move v12, v9

    goto :goto_4

    :sswitch_b
    const-string v12, "-t"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_3

    :cond_e
    move v12, v5

    goto :goto_4

    :sswitch_c
    const-string v12, "-i"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    goto :goto_3

    :cond_f
    move v12, v6

    goto :goto_4

    :sswitch_d
    const-string v12, "-d"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    goto :goto_3

    :cond_10
    move v12, v7

    goto :goto_4

    :sswitch_e
    const-string v12, "-a"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    goto :goto_3

    :cond_11
    move v12, v8

    goto :goto_4

    :sswitch_f
    const-string v12, "--destination"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_3

    :cond_12
    move v12, v14

    goto :goto_4

    :sswitch_10
    const-string v12, "--device_type"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    goto :goto_3

    :cond_13
    move v12, v15

    :goto_4
    packed-switch v12, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unknown argument: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    goto :goto_5

    :pswitch_3
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_5

    :pswitch_4
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    :pswitch_5
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_5
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_14
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v5, v2, [B

    move v6, v15

    :goto_6
    if-ge v6, v2, :cond_15

    aget-object v7, v1, v6

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/2addr v6, v14

    goto :goto_6

    :cond_15
    const-string/jumbo v1, "Sending <Vendor Command>"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-virtual {v0, v3, v4, v5, v11}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendVendorCommand(II[BZ)V

    return v15

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected 3 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v1

    if-ne v1, v14, :cond_18

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "Sending Device Select..."

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v3, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    const-string v1, "Device Select"

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_9

    :cond_17
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_8

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected exactly 1 argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v1

    const-string/jumbo v2, "Please indicate if System Audio Mode should be turned \"on\" or \"off\"."

    if-gt v14, v1, :cond_1c

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string/jumbo v1, "Setting System Audio Mode on"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    invoke-virtual {v1, v14, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_7

    :cond_19
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "Setting System Audio Mode off"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    invoke-virtual {v1, v15, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    :goto_7
    const-string/jumbo v1, "Set System Audio Mode"

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_9

    :cond_1a
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_22

    goto :goto_8

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v1

    const-string/jumbo v2, "Please indicate if ARC mode should be turned \"on\" or \"off\"."

    if-gt v14, v1, :cond_1f

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string/jumbo v1, "Setting ARC mode on"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-virtual {v0, v14}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->setArcMode(Z)V

    return v15

    :cond_1d
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "Setting ARC mode off"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-virtual {v0, v15}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->setArcMode(Z)V

    return v15

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    const-string/jumbo v1, "Sending One Touch Play..."

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const-string/jumbo v1, "One Touch Play"

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_9

    :cond_20
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_22

    :goto_8
    return v15

    :pswitch_a
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v1

    if-gt v14, v1, :cond_25

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->setMessageHistorySize(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "Setting CEC dumpsys message history size to "

    invoke-static {v10, v0, v1}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return v15

    :cond_21
    const-string/jumbo v0, "Message history size not changed, was it lower than the minimum size?"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v15

    :catch_2
    const-string v0, "Cannot set CEC dumpsys message history size to "

    invoke-static {v10, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_9
    return v14

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->getMessageHistorySize()I

    move-result v0

    const-string v1, "CEC dumpsys message history size = "

    invoke-static {v10, v1, v0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return v15

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use \'set\' or \'get\' for the command action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74f38f34 -> :sswitch_8
        -0x38ff28b3 -> :sswitch_7
        -0x35fd3550 -> :sswitch_6
        -0x35fcf3c3 -> :sswitch_5
        -0x1bd7bf78 -> :sswitch_4
        -0x18c452e -> :sswitch_3
        0x1af2b -> :sswitch_2
        0x25083903 -> :sswitch_1
        0x4ed06452 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14b41a1d -> :sswitch_10
        -0xdf78592 -> :sswitch_f
        0x5d4 -> :sswitch_e
        0x5d7 -> :sswitch_d
        0x5dc -> :sswitch_c
        0x5e7 -> :sswitch_b
        0x152abb -> :sswitch_a
        0x4f72067d -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->handleShellCommand(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Caught error for command \'"

    const-string v2, "\': "

    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Error handling hdmi_control shell command: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiShellCommand"

    invoke-static {p1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final onHelp()V
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "HdmiControlManager (hdmi_control) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  onetouchplay, otp"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Send the \"One Touch Play\" feature from a source to the TV"

    const-string v1, "  vendorcommand --device_type <originating device type>"

    const-string v2, "                --destination <destination device>"

    const-string v3, "                --args <vendor specific arguments>"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "                [--id <true if vendor command should be sent with vendor id>]"

    const-string v1, "      Send a Vendor Command to the given target device"

    const-string v2, "  cec_setting get <setting name>"

    const-string v3, "      Get the current value of a CEC setting"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  cec_setting set <setting name> <value>"

    const-string v1, "      Set the value of a CEC setting"

    const-string v2, "  setsystemaudiomode, setsam [on|off]"

    const-string v3, "      Sets the System Audio Mode feature on or off on TV devices"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  setarc [on|off]"

    const-string v1, "      Sets the ARC feature on or off on TV devices"

    const-string v2, "  deviceselect <device id>"

    const-string v3, "      Switch to device with given id"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      The device\'s id is represented by its logical address."

    const-string v1, "  history_size get"

    const-string v2, "      Gets the number of messages that can be stored in dumpsys history"

    const-string v3, "  history_size set <new_size>"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      Changes the number of messages that can be stored in dumpsys history to new_size"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final receiveCallback(Ljava/lang/String;)Z
    .locals 5

    const-string v0, " timed out."

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Caught InterruptedException"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

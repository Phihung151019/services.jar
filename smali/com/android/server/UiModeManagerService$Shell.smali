.class public final Lcom/android/server/UiModeManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mInterface:Lcom/android/server/UiModeManagerService$Stub;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService$Stub;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    return-void
.end method

.method public static nightModeToStr(II)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "custom_schedule"

    return-object p0

    :cond_1
    if-ne p1, v0, :cond_2

    const-string/jumbo p0, "custom_bedtime"

    return-object p0

    :cond_2
    :goto_0
    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_3
    const-string/jumbo p0, "yes"

    return-object p0

    :cond_4
    const-string/jumbo p0, "no"

    return-object p0

    :cond_5
    const-string/jumbo p0, "auto"

    return-object p0
.end method


# virtual methods
.method public final handleCarMode()I
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    return v2

    :cond_0
    const-string/jumbo v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    const-string v1, ""

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/server/UiModeManagerService$Stub;->enableCarMode(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    return v2

    :cond_1
    const-string/jumbo v3, "no"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/UiModeManagerService$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentCarMode()V

    return v2

    :cond_2
    const-string p0, "Error: mode must be \'yes\', or \'no\'"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final handleCustomTime()I
    .locals 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-virtual {v5}, Lcom/android/server/UiModeManagerService$Stub;->getCustomNightModeStart()J

    move-result-wide v5

    mul-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "end "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->getCustomNightModeEnd()J

    move-result-wide v5

    mul-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_0
    const-string/jumbo v4, "end"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "start"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "command must be in [start|end]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-static {v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v0

    sget-object v4, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/UiModeManagerService$Stub;->setCustomNightModeStart(J)V

    return v3

    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-static {v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v0

    sget-object v4, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    div-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/UiModeManagerService$Stub;->setCustomNightModeEnd(J)V

    return v3
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    const-string/jumbo v0, "custom_schedule"

    const-string/jumbo v1, "custom_bedtime"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x17fd4

    if-eq v7, v8, :cond_3

    const v8, 0x3652cd

    if-eq v7, v8, :cond_2

    const v8, 0x63f6418

    if-eq v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "night"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v5

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_2
    const-string/jumbo v7, "time"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "car"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v6

    :goto_1
    if-eqz v7, :cond_7

    if-eq v7, v4, :cond_6

    if-eq v7, v3, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCustomTime()I

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCarMode()I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v8, "Night mode: "

    if-nez v7, :cond_8

    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Stub;->getNightMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService$Stub;->getNightModeCustomType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_2
    move v9, v6

    goto :goto_3

    :sswitch_0
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_2

    :cond_9
    const/4 v9, 0x4

    goto :goto_3

    :sswitch_1
    const-string/jumbo v9, "auto"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_2

    :cond_a
    move v9, v2

    goto :goto_3

    :sswitch_2
    const-string/jumbo v9, "yes"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_2

    :cond_b
    move v9, v3

    goto :goto_3

    :sswitch_3
    const-string/jumbo v9, "no"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_2

    :cond_c
    move v9, v4

    goto :goto_3

    :sswitch_4
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_2

    :cond_d
    move v9, v5

    :goto_3
    packed-switch v9, :pswitch_data_0

    move v3, v6

    goto :goto_4

    :pswitch_0
    move v3, v5

    goto :goto_4

    :pswitch_1
    move v3, v4

    goto :goto_4

    :pswitch_2
    move v3, v2

    :goto_4
    :pswitch_3
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    move v4, v6

    goto :goto_5

    :cond_e
    move v4, v5

    :cond_f
    :goto_5
    if-ltz v3, :cond_11

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-virtual {p1, v3}, Lcom/android/server/UiModeManagerService$Stub;->setNightMode(I)V

    if-ne v3, v2, :cond_10

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-virtual {p1, v4}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeCustomType(I)V

    :cond_10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Stub;->getNightMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService$Stub;->getNightModeCustomType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_11
    const-string v0, "Error: mode must be \'yes\', \'no\', or \'auto\', or \'custom_schedule\', or \'custom_bedtime\'"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v6

    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Remote exception: "

    invoke-static {v0, p1, p0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    return v6

    :sswitch_data_0
    .sparse-switch
        -0x2d2c2800 -> :sswitch_4
        0xdc1 -> :sswitch_3
        0x1d2e7 -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x9cc87a5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "UiModeManager service (uimode) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  night [yes|no|auto|custom_schedule|custom_bedtime]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set or read night mode."

    const-string v1, "  car [yes|no]"

    const-string v2, "    Set or read car mode."

    const-string v3, "  time [start|end] <ISO time>"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Set custom start/end schedule time (night mode must be set to custom to apply)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printCurrentCarMode()V
    .locals 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Lcom/android/server/UiModeManagerService$Stub;

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->getCurrentModeType()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const-string/jumbo p0, "yes"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "no"

    :goto_0
    const-string v1, "Car mode: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

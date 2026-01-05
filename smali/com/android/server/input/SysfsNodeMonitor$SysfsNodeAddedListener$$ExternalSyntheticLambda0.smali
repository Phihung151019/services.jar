.class public final synthetic Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

.field public final synthetic f$1:Landroid/os/UEventObserver$UEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

    iput-object p2, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;->f$1:Landroid/os/UEventObserver$UEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;->f$1:Landroid/os/UEventObserver$UEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/server/input/SysfsNodeMonitor;->DEBUG:Z

    const-string/jumbo v2, "SysfsNodeMonitor"

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UEventListener: Received UEvent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "SUBSYSTEM"

    invoke-virtual {p0, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEVPATH"

    invoke-virtual {p0, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "/sys"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTION"

    invoke-virtual {p0, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-boolean v5, v0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedRemovalNotification:Z

    const/4 v6, 0x1

    if-nez v5, :cond_7

    const-string/jumbo v5, "REMOVE"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "LEDS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iget-object v7, v0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    if-eqz v5, :cond_3

    const-string v5, "ADD"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_2

    const-string/jumbo p0, "Reconfiguring sysfs node because \'leds\' node was added: "

    invoke-static {p0, v4, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, v7, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, v4}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo v5, "POWER_SUPPLY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedPowerSupplyNotification:Z

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const-string/jumbo v1, "Reconfiguring sysfs node because \'power_supply\' node had action \'"

    const-string v3, "\': "

    invoke-static {v1, p0, v3, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iput-boolean v6, v0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedPowerSupplyNotification:Z

    iget-object p0, v7, Lcom/android/server/input/SysfsNodeMonitor;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, v4}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    iput-boolean v6, v0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedRemovalNotification:Z

    return-void
.end method

.class public final Lcom/android/server/TradeInModeService$TradeInMode;
.super Landroid/os/ITradeInMode$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/TradeInModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-direct {p0}, Landroid/os/ITradeInMode$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final enforceTestingPermissions()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v1, "Caller must have ENTER_TRADE_IN_MODE permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "ro.debuggable must be set to 1"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enterEvaluationMode()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    iget-object v0, v0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Cannot enter trade-in evaluation mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result v0

    const-string/jumbo v1, "TradeInModeService"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const-string p0, "Cannot enter evaluation mode in state: "

    invoke-static {v0, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misFrpActive(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Cannot enter evaluation mode, FRP lock is present."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-virtual {v3}, Lcom/android/server/TradeInModeService;->removeNetworkWatch()V

    iget-object v3, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-virtual {v3}, Lcom/android/server/TradeInModeService;->removeAccountsWatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.adb.tradeinmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mBroadcastReceiver:Lcom/android/server/TradeInModeService$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo p0, "ctl.restart"

    const-string/jumbo v0, "adbd"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isEvaluationModeAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    iget-object v0, v0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Cannot test for trade-in evaluation mode allowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$misFrpActive(Lcom/android/server/TradeInModeService;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isTesting()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    invoke-static {}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result p0

    return p0
.end method

.method public final scheduleWipeForTesting()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z

    return-void
.end method

.method public final start()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    iget-object v0, v0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Cannot enter trade-in mode foyer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, "TradeInModeService"

    if-eqz v0, :cond_1

    const-string p0, "Cannot enter trade-in mode in state: "

    invoke-static {v0, p0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-virtual {v0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "Not starting trade-in mode, device is setup."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-static {}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result v0

    const-string/jumbo v4, "adb_enabled"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo p0, "Not starting trade-in mode, device is debuggable."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    iget-object v0, v0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    const-string/jumbo p0, "Not starting trade-in mode, adb is already enabled."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    const-string v0, "Enabling trade-in mode."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "persist.adb.tradeinmode"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v7, Lcom/android/server/TradeInModeService$SettingsObserver;

    invoke-direct {v7, p0}, Lcom/android/server/TradeInModeService$SettingsObserver;-><init>(Lcom/android/server/TradeInModeService;)V

    invoke-virtual {v4, v0, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v4, v3, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForNetworkChange()V

    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/accounts/AccountManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v3, Lcom/android/server/TradeInModeService$3;

    invoke-direct {v3, p0}, Lcom/android/server/TradeInModeService$3;-><init>(Lcom/android/server/TradeInModeService;)V

    iput-object v3, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Lcom/android/server/TradeInModeService$3;

    const/4 p0, 0x0

    invoke-virtual {v0, v3, p0, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final startTesting()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "persist.adb.test_tradeinmode"

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.adb.tradeinmode"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final stopTesting()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    invoke-static {}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->leaveTestMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "testing must have been started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

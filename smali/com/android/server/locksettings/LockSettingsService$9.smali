.class public final Lcom/android/server/locksettings/LockSettingsService$9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$9;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Start backup spblob dir"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/lock/SPBnRManager;->setProtectorIdForBackup(IJJ)V

    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->startBackup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const-string/jumbo v0, "locksettings_spblob_backup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    const-string/jumbo p0, "SPblobBNR, Success backup spblob dir"

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/lock/SPBnRManager;->getBackupPWFilelist(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "SPblobBNR, Failed backup spblob dir"

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/lock/SPBnRManager;->getBackupPWFilelist(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "LockSettingsService"

    const-string v1, "!@ Reset SecurityDebugLevel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->getFailureCount(I)I

    move-result v1

    sget v2, Lcom/samsung/android/lock/LsConstants;->SECURITY_DEBUG_ON_COUNT:I

    if-ge v1, v2, :cond_2

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$9;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Uid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sent too many Binders to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/BinderProxy;->dumpProxyDebugInfo()V

    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v3}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    new-instance v4, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;

    invoke-direct {v4}, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;-><init>()V

    iput p0, v4, Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setExcessiveBinderCalls(Lcom/android/server/criticalevents/nano/CriticalEventProto$ExcessiveBinderCalls;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-virtual {v1, v3}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    const/16 v1, 0x3e8

    if-ne p0, v1, :cond_0

    const-string/jumbo p0, "Skipping kill (uid is SYSTEM)"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    sget p0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    const/16 v6, 0x9

    const/16 v7, 0x1d

    const-string/jumbo v8, "Too many Binders sent to SYSTEM"

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->killUid(IIIILjava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object p0

    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda26;->f$1:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    const-class v1, Landroid/app/backup/BackupManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/BackupManagerInternal;

    invoke-interface {v1, v0, p0}, Landroid/app/backup/BackupManagerInternal;->agentDisconnectedForUser(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

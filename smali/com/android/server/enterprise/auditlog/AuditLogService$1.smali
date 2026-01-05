.class public final Lcom/android/server/enterprise/auditlog/AuditLogService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo p1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string/jumbo p1, "android.intent.action.REBOOT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo p1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-string p1, "AuditLogService"

    const-string p2, "ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iput-boolean v0, p1, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/auditlog/Admin;

    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const-string/jumbo p1, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    new-instance p2, Landroid/sec/enterprise/auditlog/AuditLogParams;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/sec/enterprise/auditlog/AuditLogParams;-><init>([Ljava/lang/Object;)V

    const/16 v0, 0x71

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(IIILandroid/sec/enterprise/auditlog/AuditLogParams;)V

    return-void

    :cond_3
    const-string/jumbo p1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "android.intent.extra.USER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    new-instance v0, Landroid/sec/enterprise/auditlog/AuditLogParams;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/sec/enterprise/auditlog/AuditLogParams;-><init>([Ljava/lang/Object;)V

    const/16 p1, 0x72

    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(IIILandroid/sec/enterprise/auditlog/AuditLogParams;)V

    return-void

    :cond_4
    const-string/jumbo p1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string/jumbo p1, "android.intent.extra.USER"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    new-instance v0, Landroid/sec/enterprise/auditlog/AuditLogParams;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/sec/enterprise/auditlog/AuditLogParams;-><init>([Ljava/lang/Object;)V

    const/16 p1, 0x73

    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(IIILandroid/sec/enterprise/auditlog/AuditLogParams;)V

    return-void

    :cond_5
    const-string/jumbo p1, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const-string/jumbo v2, "policyData"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsMobileDataLimited:Z

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-boolean p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsMobileDataLimited:Z

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-$$Nest$mlogMobileDataStatus(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)V

    return-void

    :cond_6
    const-string/jumbo p1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/AuditLogService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-boolean v2, p2, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsMobileDataLimited:Z

    if-nez v2, :cond_9

    iget-boolean v2, p2, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsMobileDataEnabled:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x5

    if-ne p1, v2, :cond_7

    invoke-static {p2, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-$$Nest$mlogMobileDataStatus(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)V

    goto :goto_2

    :cond_7
    if-eq p1, v0, :cond_8

    if-nez p1, :cond_9

    iget v2, p2, Lcom/android/server/enterprise/auditlog/AuditLogService;->mSimState:I

    if-eq v2, v0, :cond_9

    :cond_8
    invoke-static {p2, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-$$Nest$mlogMobileDataStatus(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)V

    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iput p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mSimState:I

    :cond_a
    return-void

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object p2, p2, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v0, p2, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p2, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-virtual {p2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->closeFile()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_c
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

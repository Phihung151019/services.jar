.class public final Lcom/android/server/enterprise/plm/ProcessAdapter;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

.field public mStateDelegate:Lcom/android/server/enterprise/plm/ProcessStateTracker;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "Invalid message "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleMessage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    const-string/jumbo v3, "ProcessAdapter"

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->UPDATE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    return-void

    :cond_1
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->DEATH:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    return-void

    :cond_2
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->ALIVE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    return-void

    :cond_3
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    return-void

    :cond_4
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->START:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tryKeepAlive("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    iget-object v2, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ProcessAdapter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    const-string v6, ":"

    const/4 v7, 0x0

    const-string v8, "KeepAliveImpl"

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    const/4 v9, 0x2

    if-eq v0, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "set "

    :try_start_0
    iget-object v9, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    move-result-object v11

    iget-object v12, v11, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    if-eqz v12, :cond_1

    iget v11, v11, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    goto :goto_0

    :cond_1
    move v11, v3

    :goto_0
    if-eqz v9, :cond_4

    if-eqz v10, :cond_4

    if-eq v11, v3, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " important"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v10, v11, v4}, Landroid/app/ActivityManager;->semSetProcessImportant(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iput-object v7, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Lcom/android/server/enterprise/plm/ProcessAdapter;

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iput-object p0, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Lcom/android/server/enterprise/plm/ProcessAdapter;

    const/4 v0, 0x3

    iput v0, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mAliveEvent:I

    const/4 v0, 0x4

    iput v0, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mDeathEvent:I

    :cond_4
    :goto_1
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    const/4 v9, 0x0

    if-eq p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mStateDelegate:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    :try_start_1
    invoke-virtual {v5, p0}, Lcom/android/server/enterprise/plm/context/ProcessContext;->needToKeepAlive(Lcom/android/server/enterprise/plm/ProcessStateTracker;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    const-string p1, "BindServiceImpl"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v9

    :goto_2
    if-eqz p0, :cond_5

    move p0, v4

    goto :goto_3

    :cond_5
    move p0, v9

    :goto_3
    const-string/jumbo p1, "needToKeepAlive : "

    invoke-static {p1, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo p1, "Utils"

    const-string v0, " : "

    if-eqz p0, :cond_9

    invoke-virtual {v5}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :try_start_2
    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v9

    :goto_4
    if-ne p1, v4, :cond_6

    move p1, v4

    goto :goto_5

    :cond_6
    move p1, v9

    :goto_5
    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->start()Z

    move-result p1

    goto :goto_6

    :catchall_3
    move-exception p1

    goto :goto_7

    :cond_7
    move p1, v4

    :goto_6
    invoke-virtual {v1, p0, v4}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->setPackageEnabled(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v9, p1

    goto :goto_8

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start process "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_10

    const-string/jumbo p0, "failed to start keep alive"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_9
    const-string/jumbo p0, "kill process "

    invoke-virtual {v5}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :try_start_5
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->hasPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    if-eqz v10, :cond_a

    move v10, v4

    goto :goto_9

    :cond_a
    move v10, v9

    :goto_9
    if-eqz v10, :cond_b

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    move-result-object v10

    iget-object v11, v10, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    if-eqz v11, :cond_b

    iget v10, v10, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    goto :goto_a

    :cond_b
    move v10, v3

    :goto_a
    iget-object v11, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v11

    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v9

    :goto_b
    if-ne p1, v4, :cond_c

    move p1, v4

    goto :goto_c

    :cond_c
    move p1, v9

    :goto_c
    if-eqz p1, :cond_d

    iget-object p1, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    if-eqz p1, :cond_d

    new-instance v11, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v11, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V

    invoke-virtual {p1, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v7, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    :cond_d
    invoke-virtual {v1, v5, v9}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->setPackageEnabled(Ljava/lang/String;Z)V

    if-eq v10, v3, :cond_f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception p0

    goto :goto_e

    :cond_e
    move v4, v9

    :cond_f
    :goto_d
    move v9, v4

    goto :goto_f

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "stop process "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_10

    const-string/jumbo p0, "failed to stop keep alive"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_10
    return-void
.end method

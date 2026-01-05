.class public final Lcom/android/server/ambientcontext/AmbientContextShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public static final REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public static final WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public static final sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;


# instance fields
.field public final mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;

    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    const v2, 0x186a1

    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    new-instance v0, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    invoke-direct {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->addEventType(I)Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ambientcontext/AmbientContextEventRequest$Builder;->build()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const v3, 0x186a1

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v5, "start-detection"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v5, "get-last-status-code"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v5, "query-service-status"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v5, "set-temporary-service"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "query-wearable-service-status"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "set-temporary-services"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v5, "start-detection-mixed"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_7
    const-string/jumbo v5, "start-detection-wearable"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_8
    const-string/jumbo v5, "query-mixed-service-status"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    move v4, v0

    goto :goto_0

    :sswitch_9
    const-string/jumbo v5, "stop-detection"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    move v4, v1

    goto :goto_0

    :sswitch_a
    const-string/jumbo v5, "get-bound-package"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_0

    :cond_b
    move v4, v2

    :goto_0
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    move-result-object v5

    invoke-virtual {v1, p1, v3, v0, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;)V

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    invoke-direct {v1, v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    return v2

    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    sget-object p1, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    iget p1, p1, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastStatus:I

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    return v2

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    return v2

    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    const-string v3, "AmbientContextDetectionService temporary reset. "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    return v2

    :cond_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "AmbientContextDetectionService temporarily set to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " for "

    const-string/jumbo v4, "ms"

    invoke-static {v1, v3, v0, v4, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3}, [I

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    return v2

    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_11

    if-nez v4, :cond_d

    goto/16 :goto_4

    :cond_d
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "setTemporaryService("

    const-string v7, ") to "

    invoke-static {v0, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " for "

    const-string/jumbo v9, "ms"

    invoke-static {v4, v7, v8, v9, v6}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    if-nez v5, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->enforceCallingPermissionForManagement()V

    const/16 v5, 0x7530

    if-gt v4, v5, :cond_10

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_f
    :goto_1
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->setTemporaryServices(II[Ljava/lang/String;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    const-string p0, "AmbientContextShellCommand"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "AmbientContextDetectionService temporarily set to "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v1

    const-string v6, " for "

    const-string/jumbo v7, "ms"

    invoke-static {v4, v5, v6, v7, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "AmbientContextDetectionService temporarily set to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v3, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v1

    const-string v1, " for "

    const-string/jumbo v3, "ms"

    invoke-static {v4, v0, v1, v3, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Max duration is 30000 (called with "

    const-string v0, ")"

    invoke-static {v4, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_4
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    const-string p0, "AmbientContextDetectionService temporary reset."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->MIXED_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    move-result-object v5

    invoke-virtual {v1, p1, v3, v0, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;)V

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    invoke-direct {v1, v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    return v2

    :pswitch_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->WEARABLE_REQUEST:Landroid/app/ambientcontext/AmbientContextEventRequest;

    sget-object v4, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-static {v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$mcreateAmbientContextObserver(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    move-result-object v5

    invoke-virtual {v1, p1, v3, v0, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->startDetection(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;)V

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;

    invoke-direct {v1, v4}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    return v2

    :pswitch_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v3}, [I

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v3, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->sTestableCallbackInternal:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->queryServiceStatus(ILjava/lang/String;[ILandroid/os/RemoteCallback;)V

    return v2

    :pswitch_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    const-string v5, "AmbientContextManagerService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mExistingClientRequests:Ljava/util/Set;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    const-string v6, "AmbientContextManagerService"

    const-string/jumbo v7, "Looping through clients"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    if-ne p1, v6, :cond_13

    iget-object v6, v5, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v6, v1

    goto :goto_6

    :cond_13
    move v6, v2

    :goto_6
    if-eqz v6, :cond_12

    const-string v6, "AmbientContextManagerService"

    const-string/jumbo v7, "we have an existing client"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v5, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    invoke-virtual {v5}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getAmbientContextManagerPerUserServiceForEventTypes(ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->stopDetection(Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_14
    const-string v5, "AmbientContextManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "service not available for user_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_15
    monitor-exit v3

    return v2

    :goto_7
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForType(ILcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    monitor-exit v3

    goto :goto_8

    :catchall_2
    move-exception p0

    goto :goto_a

    :cond_16
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 p0, 0x0

    :goto_8
    if-nez p0, :cond_17

    const-string p0, ""

    goto :goto_9

    :cond_17
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_9
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :goto_a
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x7c399b40 -> :sswitch_a
        -0x7a19e586 -> :sswitch_9
        -0x6ce969ff -> :sswitch_8
        -0x36dbe914 -> :sswitch_7
        -0x36d18cb8 -> :sswitch_6
        -0x6755c5b -> :sswitch_5
        0x383c9ef9 -> :sswitch_4
        0x41db2e8e -> :sswitch_3
        0x5a9159af -> :sswitch_2
        0x784ce7c8 -> :sswitch_1
        0x7c42deda -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "AmbientContextEvent commands: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  start-detection USER_ID PACKAGE_NAME: Starts AmbientContextEvent detection."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  start-detection-wearable USER_ID PACKAGE_NAME: Starts AmbientContextEvent detection for wearable."

    const-string v1, "  start-detection-mixed USER_ID PACKAGE_NAME:  Starts AmbientContextEvent detection for mixed events."

    const-string v2, "  stop-detection USER_ID PACKAGE_NAME: Stops AmbientContextEvent detection."

    const-string v3, "  get-last-status-code: Prints the latest request status code."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  query-service-status USER_ID PACKAGE_NAME: Prints the service status code."

    const-string v1, "  query-wearable-service-status USER_ID PACKAGE_NAME: Prints the service status code for wearable."

    const-string v2, "  query-mixed-service-status USER_ID PACKAGE_NAME: Prints the service status code for mixed events."

    const-string v3, "  get-bound-package USER_ID:     Print the bound package that implements the service."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  set-temporary-service USER_ID [PACKAGE_NAME] [COMPONENT_NAME DURATION]"

    const-string v1, "    Temporarily (for DURATION ms) changes the service implementation."

    const-string v2, "    To reset, call with just the USER_ID argument."

    const-string v3, "  set-temporary-services USER_ID [FIRST_PACKAGE_NAME] [SECOND_PACKAGE_NAME] [COMPONENT_NAME DURATION]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

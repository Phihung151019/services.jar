.class public final Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final KZT_FW_PKG_NAME:Ljava/lang/String; = "com.samsung.android.knox.zt.framework"

.field public static final TAG:Ljava/lang/String; = "EndpointMonitorImpl"


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public mBootTimeNanos:J

.field public final mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

.field public final mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

.field public volatile mKztFrameworkPid:I

.field public final mProcessObserver:Landroid/app/IProcessObserver;

.field public final mProcessObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

.field public final mSessionLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    invoke-direct {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-wide v0, p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    iput-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mBootTimeNanos:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-direct {v1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    const-class v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mAmInternal:Landroid/app/ActivityManagerInternal;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;

    invoke-direct {p1, p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)V

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    return-void
.end method

.method public static synthetic lambda$getFilter$0(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final containsNetworkEventFlag(I)Z
    .locals 0

    const p0, 0x8000

    and-int/2addr p0, p1

    if-gtz p0, :cond_1

    const/high16 p0, 0x10000

    and-int/2addr p0, p1

    if-gtz p0, :cond_1

    const/high16 p0, 0x20000

    and-int/2addr p0, p1

    if-gtz p0, :cond_1

    const/high16 p0, 0x40000

    and-int/2addr p0, p1

    if-gtz p0, :cond_1

    const/high16 p0, 0x80000

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final createMonitoringTask(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;)",
            "Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->rescheduleMonitoringTask(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Task rescheduled = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    check-cast p2, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    iget-object p2, p2, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mFingerprint:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;

    iget-object v8, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    move v3, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/knox/zt/devicetrust/task/SocketListenerMonitoring;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v1

    :pswitch_2
    new-instance v2, Lcom/android/server/knox/zt/devicetrust/task/VpnBypassMonitoring;

    iget-object v9, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    move v4, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/knox/zt/devicetrust/task/VpnBypassMonitoring;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v2

    :pswitch_3
    new-instance v2, Lcom/android/server/knox/zt/devicetrust/task/LocalNetworkPktMonitoring;

    iget-object v9, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    move v4, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/knox/zt/devicetrust/task/LocalNetworkPktMonitoring;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v2

    :pswitch_4
    new-instance v2, Lcom/android/server/knox/zt/devicetrust/task/AbnormalPacketsMonitoring;

    iget-object v9, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    move v4, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/knox/zt/devicetrust/task/AbnormalPacketsMonitoring;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v2

    :pswitch_5
    new-instance v2, Lcom/android/server/knox/zt/devicetrust/task/InsecurePortsMonitoring;

    iget-object v9, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    move v4, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/knox/zt/devicetrust/task/InsecurePortsMonitoring;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v2

    :pswitch_6
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/PrivilegeEscalationMonitoring;

    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/task/PrivilegeEscalationMonitoring;-><init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/ProcessMonitoring;

    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/task/ProcessMonitoring;-><init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/ExecveMonitoring;

    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/task/ExecveMonitoring;-><init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;

    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;-><init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v0

    :pswitch_a
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/PacketMonitoring;

    iget-object v8, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    const/4 v1, 0x5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v0

    :pswitch_b
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/SocketStateMonitoring;

    iget-object v8, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    const/4 v1, 0x3

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/SystemCallMonitoring;

    iget-object v8, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    const/4 v1, 0x1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getFilter(Landroid/os/Bundle;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "app_only"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFlags(ILandroid/os/Bundle;)I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    const-string/jumbo p0, "flags"

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    const/16 p0, 0x20

    return p0

    :cond_1
    const/4 p0, 0x5

    if-ne p1, p0, :cond_2

    const/16 p0, 0x40

    return p0

    :cond_2
    const/4 p0, 0x7

    if-ne p1, p0, :cond_3

    const/16 p0, 0x80

    return p0

    :cond_3
    const/4 p0, 0x4

    if-ne p1, p0, :cond_4

    const/16 p0, 0x800

    return p0

    :cond_4
    const/16 p0, 0xa

    if-ne p1, p0, :cond_5

    const/16 p0, 0x1000

    return p0

    :cond_5
    const/16 p0, 0xb

    if-ne p1, p0, :cond_6

    const/16 p0, 0x2000

    return p0

    :cond_6
    const/16 p0, 0xc

    if-ne p1, p0, :cond_7

    const/16 p0, 0x4000

    return p0

    :cond_7
    const/16 p0, 0xe

    if-ne p1, p0, :cond_8

    const p0, 0x8000

    return p0

    :cond_8
    const/16 p0, 0xf

    if-ne p1, p0, :cond_9

    const/high16 p0, 0x10000

    return p0

    :cond_9
    const/16 p0, 0x10

    if-ne p1, p0, :cond_a

    const/high16 p0, 0x20000

    return p0

    :cond_a
    const/16 p0, 0x11

    if-ne p1, p0, :cond_b

    const/high16 p0, 0x40000

    return p0

    :cond_b
    const/16 p0, 0x12

    if-ne p1, p0, :cond_c

    const/high16 p0, 0x80000

    return p0

    :cond_c
    return v0
.end method

.method public final getNetworkEventTypeByFlag(I)I
    .locals 0

    const p0, 0x8000

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/16 p0, 0xe

    return p0

    :cond_0
    const/high16 p0, 0x10000

    and-int/2addr p0, p1

    if-lez p0, :cond_1

    const/16 p0, 0xf

    return p0

    :cond_1
    const/high16 p0, 0x20000

    and-int/2addr p0, p1

    if-lez p0, :cond_2

    const/16 p0, 0x10

    return p0

    :cond_2
    const/high16 p0, 0x40000

    and-int/2addr p0, p1

    if-lez p0, :cond_3

    const/16 p0, 0x11

    return p0

    :cond_3
    const/high16 p0, 0x80000

    and-int/2addr p0, p1

    if-lez p0, :cond_4

    const/16 p0, 0x12

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public final prepare(II)I
    .locals 5

    const-string/jumbo v0, "prepare() startMonitoringNetworkEvents() flags = "

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v1, :cond_0

    const-string/jumbo v3, "com.samsung.android.knox.zt.framework"

    invoke-virtual {v1, p2}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput p2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mKztFrameworkPid:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mKztFrameworkPid:I

    :cond_1
    :goto_0
    and-int/lit8 p2, p1, 0x40

    if-lez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

    invoke-interface {p0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;->attachProbes(I)I

    move-result p0

    return p0

    :cond_2
    and-int/lit16 p2, p1, 0x1000

    if-gtz p2, :cond_6

    and-int/lit16 p2, p1, 0x2000

    if-gtz p2, :cond_6

    and-int/lit16 p2, p1, 0x4000

    if-gtz p2, :cond_6

    and-int/lit8 p2, p1, 0x20

    if-lez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->containsNetworkEventFlag(I)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, -0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getNetworkEventTypeByFlag(I)I

    move-result v1

    const/16 v3, 0x12

    if-ne v1, v3, :cond_4

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->attachSocketListenerProbe()I

    move-result p0

    if-gez p0, :cond_5

    sget-object p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "prepare() attachSocketListenerProbe failed to attach sock_state change tracepoint"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    move-result-object p0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "eventType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "prepare() startMonitoringNetworkEvents error "

    invoke-static {p0, v0, p1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_5
    :goto_2
    return v2

    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->setOffsets()I

    move-result p0

    return p0
.end method

.method public final registerProcessObserverLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->contains()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Failed to register process observer: "

    invoke-static {v1, p0, v0}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final rescheduleMonitoringTask(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;)",
            "Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->reschedule(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    move-result-object p0

    return-object p0
.end method

.method public final reset(I)I
    .locals 2

    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

    invoke-interface {p0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;->detachProbes(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->containsNetworkEventFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset() disableNetworkEventMonitoring called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getNetworkEventTypeByFlag(I)I

    move-result p0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "eventType"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reset() disableNetworkEventMonitoring error "

    invoke-static {p0, v0, p1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 13

    move-object/from16 v3, p3

    const-string/jumbo v4, "startTracing("

    const-string/jumbo v5, "prepare("

    sget-object v6, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "startMonitoring() - type : "

    const-string v8, ", reqId : "

    invoke-static {p1, p2, v7, v8, v6}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x2

    if-eqz v3, :cond_6

    if-eqz p4, :cond_6

    invoke-static {p1}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->validateTraceType(I)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_1

    :cond_0
    move-object v8, v4

    invoke-virtual {p0, p1, v3}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getFlags(ILandroid/os/Bundle;)I

    move-result v4

    if-gtz v4, :cond_1

    return v7

    :cond_1
    const-string/jumbo v9, "mode"

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->validateMode(I)Z

    move-result v10

    if-nez v10, :cond_2

    return v7

    :cond_2
    const-string/jumbo v7, "extras"

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v3}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getFilter(Landroid/os/Bundle;)Ljava/util/function/Predicate;

    move-result-object v3

    iget-object v10, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v11, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-virtual {v11, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->contains(I)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v0, "Failed :: Task already running"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    monitor-exit v10

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->prepare(II)I

    move-result v11

    const/4 v12, -0x5

    if-eqz v11, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    return v12

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->startTracing(I)I

    move-result v5

    if-eqz v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    return v12

    :cond_5
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v6, p4

    move v5, v7

    move-object v7, v3

    move v3, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->createMonitoringTask(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->startMonitoringTask(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I

    move-result v0

    monitor-exit v10

    return v0

    :goto_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_1
    return v7
.end method

.method public final startMonitoringTask(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I
    .locals 2

    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->schedule()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->schedule()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->establish()V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, -0x5

    :goto_1
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-virtual {v1, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->add(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)V

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->registerProcessObserverLocked()V

    :cond_3
    return v0
.end method

.method public final startTracing(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->containsNetworkEventFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startTracing() startNetworkEventLogging called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getNetworkEventTypeByFlag(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->startNetworkEventLogging(I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->startTracing(I)I

    move-result p0

    return p0
.end method

.method public final stopMonitoring(II)I
    .locals 3

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopMonitoring() - type : "

    const-string v2, ", reqId : "

    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->validateTraceType(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-virtual {v2, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->find(I)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p0, "Session not found"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->checkPermission(I)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p0, -0x1

    monitor-exit v1

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoringInner(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopMonitoring(I)V
    .locals 7

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopMonitoring() - reqId : "

    invoke-static {p1, v1, v0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-virtual {v2, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->findByUid(I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "Session not found"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    invoke-virtual {p0, v3}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoringInner(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I

    move-result v4

    sget-object v5, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "stopMonitoring() - Task : %s, Result : %d"

    invoke-virtual {v3}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopMonitoringInner(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I
    .locals 4

    iget v0, p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFlags:I

    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->reset(I)I

    move-result v0

    const-string v1, ")"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reset("

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoringTask(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopMonitoringTask("

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFlags:I

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopTracing(I)I

    move-result p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopTracing("

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return p0
.end method

.method public final stopMonitoringTask(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I
    .locals 2

    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->keep()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->terminate()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->release()V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, -0x5

    :goto_1
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    invoke-virtual {v1, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->remove(I)V

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->unregisterProcessObserverLocked()V

    :cond_3
    return v0
.end method

.method public final stopTracing(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->stopTracing(I)I

    move-result p0

    return p0
.end method

.method public final unregisterProcessObserverLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->contains()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string v1, "Failed to unregister process observer: "

    invoke-static {v1, p0, v0}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

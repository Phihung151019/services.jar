.class public abstract Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBootTimeNanos:J

.field public final mExtras:I

.field public volatile mFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;"
        }
    .end annotation
.end field

.field public final mFlags:I

.field public volatile mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

.field public final mMode:I

.field public final mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

.field public final mType:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;",
            "Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    iput p2, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mUid:I

    iput p3, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mMode:I

    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFlags:I

    iput p5, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mExtras:I

    iget-wide p1, p8, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mBootTimeNanos:J

    iget-object p1, p8, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-virtual {p0, p6}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->ensureListener(Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    invoke-virtual {p0, p7}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->ensureFilter(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public static synthetic lambda$ensureFilter$0(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final checkPermission(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mUid:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final ensureFilter(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public final ensureListener(Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener$Default;

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener$Default;-><init>()V

    return-object p0
.end method

.method public final getBootTimeNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mBootTimeNanos:J

    return-wide v0
.end method

.method public final getExtras()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mExtras:I

    return p0
.end method

.method public final getFilter()Ljava/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/knox/zt/devicetrust/data/EndpointData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method public final getFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFlags:I

    return p0
.end method

.method public final getListener()Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    return-object p0
.end method

.method public final getMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mMode:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNative()Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    return p0
.end method

.method public final getUid()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mUid:I

    return p0
.end method

.method public final onEvent(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFilter:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mBootTimeNanos:J

    invoke-virtual {p1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p1

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mExtras:I

    invoke-virtual {p1, p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;->onEvent(ILandroid/os/Bundle;)V

    return-void

    :cond_3
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mBootTimeNanos:J

    invoke-virtual {p1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p1

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mExtras:I

    invoke-virtual {p1, p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;->onEventGeneralized(ILjava/lang/String;)V

    return-void

    :cond_4
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mBootTimeNanos:J

    invoke-virtual {p1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p1

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mExtras:I

    invoke-virtual {p1, p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toLine()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;->onEventSimplified(ILjava/lang/String;)V

    return-void
.end method

.method public abstract onMonitored()V
.end method

.method public onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onMonitored()V

    return-void
.end method

.class public final Lcom/android/server/devicestate/OverrideRequestController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

.field public final mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

.field public mRequest:Lcom/android/server/devicestate/OverrideRequest;

.field public mStickyRequest:Z

.field public mStickyRequestsAllowed:Z


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final cancelCurrentBaseStateRequestLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_0

    const-string/jumbo p0, "OverrideRequestController"

    const-string p1, "Attempted to cancel a null OverrideRequest"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    return-void
.end method

.method public final cancelCurrentRequestLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-nez v0, :cond_0

    const-string/jumbo p0, "OverrideRequestController"

    const-string p1, "Attempted to cancel a null OverrideRequest"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    return-void
.end method

.method public final cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    iget p1, p1, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(ILandroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    return-void
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Override Request active: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Request: mPid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", mStatus="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ACTIVE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final hasRequest(ILandroid/os/IBinder;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    if-ne p2, p0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

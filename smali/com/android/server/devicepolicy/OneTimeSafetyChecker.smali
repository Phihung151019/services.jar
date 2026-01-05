.class public final Lcom/android/server/devicepolicy/OneTimeSafetyChecker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/admin/DevicePolicySafetyChecker;


# instance fields
.field public mDone:Z

.field public final mOperation:I

.field public final mRealSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

.field public final mReason:I

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mOperation:I

    iput p3, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mReason:I

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    iput-object p1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mRealSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "OneTimeSafetyChecker constructor: operation="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", realChecker="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", maxDuration=10000ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "OneTimeSafetyChecker"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/devicepolicy/OneTimeSafetyChecker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/devicepolicy/OneTimeSafetyChecker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/OneTimeSafetyChecker;)V

    const-wide/16 p2, 0x2710

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final disableSelf()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mDone:Z

    const-string/jumbo v1, "OneTimeSafetyChecker"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "disableSelf(): already disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restoring DevicePolicySafetyChecker to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mRealSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mRealSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDevicePolicySafetyCheckerUnchecked(Landroid/app/admin/DevicePolicySafetyChecker;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mDone:Z

    return-void
.end method

.method public final getUnsafeOperationReason(I)I
    .locals 5

    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getUnsafeOperationReason("

    const-string v2, ")"

    const-string/jumbo v3, "OneTimeSafetyChecker"

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mOperation:I

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mReason:I

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "invalid call to isDevicePolicyOperationSafe(): asked for "

    const-string v1, ", should be "

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mOperation:I

    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :goto_0
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManagerLiteInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerLiteInternal;

    const-string/jumbo v2, "notifying "

    const-string v4, " is UNSAFE"

    invoke-static {v2, v0, v4, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v1, p0, p1, v4}, Landroid/app/admin/DevicePolicyManagerLiteInternal;->notifyUnsafeOperationStateChanged(Landroid/app/admin/DevicePolicySafetyChecker;IZ)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is SAFE"

    invoke-static {v4, v0, v2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v1, p0, p1, v2}, Landroid/app/admin/DevicePolicyManagerLiteInternal;->notifyUnsafeOperationStateChanged(Landroid/app/admin/DevicePolicySafetyChecker;IZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "returning "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->disableSelf()V

    return p1
.end method

.method public final isSafeOperation(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mReason:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isSafeOperation("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "OneTimeSafetyChecker"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->disableSelf()V

    return v0
.end method

.method public final onFactoryReset(Lcom/android/internal/os/IResultReceiver;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OneTimeSafetyChecker[id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mReason:I

    invoke-static {v1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mOperation:I

    invoke-static {p0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

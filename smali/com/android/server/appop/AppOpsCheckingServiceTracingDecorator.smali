.class public final Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# instance fields
.field public final mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsCheckingServiceInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    return-void
.end method


# virtual methods
.method public final addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$3;)Z
    .locals 3

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#addAppOpsModeChangedListener"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$3;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final clearAllModes()V
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#clearAllModes"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->clearAllModes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final getForegroundOps(I)Landroid/util/SparseBooleanArray;
    .locals 3

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getForegroundOps"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(I)Landroid/util/SparseBooleanArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getForegroundOps"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getNonDefaultPackageModes"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final getNonDefaultUidModes(I)Landroid/util/SparseIntArray;
    .locals 3

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getNonDefaultUidModes"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getNonDefaultUidModes(I)Landroid/util/SparseIntArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final getPackageMode(IILjava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getPackageMode"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final getUidMode(IILjava/lang/String;)I
    .locals 3

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#getUidMode"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final readState()V
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#readState"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final removePackage(ILjava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#removePackage"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final removeUid(I)V
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#removeUid"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removeUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setPackageMode(IIILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#setPackageMode"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setPackageMode(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final setUidMode(III)Z
    .locals 3

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#setUidMode"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->setUidMode(III)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final shutdown()V
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#shutdown"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final systemReady()V
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#systemReady"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->systemReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final writeState()V
    .locals 3

    const-string/jumbo v0, "TaggedTracingAppOpsCheckingServiceInterfaceImpl#writeState"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsCheckingServiceTracingDecorator;->mService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {p0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

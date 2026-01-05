.class public interface abstract Lcom/android/server/appop/AppOpsCheckingServiceInterface;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$3;)Z
.end method

.method public abstract clearAllModes()V
.end method

.method public abstract getForegroundOps(I)Landroid/util/SparseBooleanArray;
.end method

.method public abstract getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
.end method

.method public abstract getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
.end method

.method public abstract getNonDefaultUidModes(I)Landroid/util/SparseIntArray;
.end method

.method public abstract getPackageMode(IILjava/lang/String;)I
.end method

.method public abstract getUidMode(IILjava/lang/String;)I
.end method

.method public abstract readState()V
.end method

.method public abstract removePackage(ILjava/lang/String;)Z
.end method

.method public abstract removeUid(I)V
.end method

.method public abstract setPackageMode(IIILjava/lang/String;)V
.end method

.method public abstract setUidMode(III)Z
.end method

.method public abstract shutdown()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract writeState()V
.end method

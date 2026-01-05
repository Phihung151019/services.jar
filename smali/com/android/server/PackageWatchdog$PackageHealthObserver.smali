.class public interface abstract Lcom/android/server/PackageWatchdog$PackageHealthObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract getUniqueIdentifier()Ljava/lang/String;
.end method

.method public abstract mayObservePackage(Ljava/lang/String;)Z
.end method

.method public abstract onBootLoop(I)I
.end method

.method public abstract onExecuteBootLoopMitigation(I)I
.end method

.method public abstract onExecuteHealthCheckMitigation(Landroid/content/pm/VersionedPackage;II)I
.end method

.method public abstract onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
.end method

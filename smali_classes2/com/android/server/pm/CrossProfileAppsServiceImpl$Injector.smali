.class public interface abstract Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract checkComponentPermission(ILjava/lang/String;)I
.end method

.method public abstract getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
.end method

.method public abstract getAppOpsManager()Landroid/app/AppOpsManager;
.end method

.method public abstract getCallingPid()I
.end method

.method public abstract getCallingUid()I
.end method

.method public abstract getCallingUserId()I
.end method

.method public abstract getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
.end method

.method public abstract getIPackageManager()Landroid/content/pm/IPackageManager;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
.end method

.method public abstract getUserManager()Landroid/os/UserManager;
.end method

.method public abstract killUid(I)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
.end method

.method public abstract withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
.end method

.class public Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public assertSyncPermission()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.SYNC_FLAGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Non-core flag queried. Requires SYNC_FLAGS permission!"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public assertWritePermission()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.WRITE_FLAGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Requires WRITE_FLAGS permission!"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

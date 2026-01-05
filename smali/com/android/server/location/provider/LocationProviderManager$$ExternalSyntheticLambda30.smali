.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic f$1:Lcom/android/server/location/LocationManagerService;

.field public final synthetic f$2:Lcom/android/server/location/provider/AbstractLocationProvider$State;

.field public final synthetic f$3:Lcom/android/server/location/provider/AbstractLocationProvider$State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$1:Lcom/android/server/location/LocationManagerService;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$2:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iput-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$3:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$1:Lcom/android/server/location/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$2:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$3:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object v3, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    :cond_0
    iget-object v0, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object v4, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v4, v1, Lcom/android/server/location/LocationManagerService;->mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    if-eqz v4, :cond_6

    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_1
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p0

    goto :goto_2

    :cond_4
    move p0, v3

    :goto_2
    if-eq v2, v3, :cond_5

    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v2, v5, v8}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    invoke-virtual {v1, p0}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;

    const/4 v5, 0x1

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;
.super Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;


# direct methods
.method public constructor <init>(Landroid/app/ondeviceintelligence/IListFeaturesCallback;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onSuccess(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

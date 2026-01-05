.class public final Lcom/android/server/om/OverlayManagerService$ValidatorListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final mValidatorListeners:Ljava/util/ArrayList;


# instance fields
.field public final id:I

.field public isValidated:Z

.field public final validationLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->mValidatorListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->validationLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->isValidated:Z

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->id:I

    sget-object v0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->mValidatorListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeValidatorListener(I)V
    .locals 2

    sget-object v0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->mValidatorListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/om/OverlayManagerService$ValidatorListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/om/OverlayManagerService$ValidatorListener$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

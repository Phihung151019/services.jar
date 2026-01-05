.class public final Lcom/android/server/DynamicSystemService$GsiServiceCallback;
.super Landroid/gsi/IGsiServiceCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/gsi/IGsiServiceCallback$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized onResult(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

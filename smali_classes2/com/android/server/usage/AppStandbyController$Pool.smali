.class public final Lcom/android/server/usage/AppStandbyController$Pool;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mArray:[Ljava/lang/Object;

.field public mSize:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mArray:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized obtain()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mArray:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    aget-object v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized recycle(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mArray:[Ljava/lang/Object;

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/server/usage/AppStandbyController$Pool;->mSize:I

    aput-object p1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

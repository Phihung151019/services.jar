.class public Lcom/android/server/enterprise/firewall/KnoxNetIdManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mLastNetId:I

.field public final mMinNetId:I

.field public final mNetIdInUse:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x9c40

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const v0, 0xfbfe

    iput v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    iput p1, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mMinNetId:I

    return-void
.end method


# virtual methods
.method public final releaseNetId(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reserveNetId()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const v3, 0xfbfe

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mMinNetId:I

    if-lt v4, v5, :cond_2

    if-le v1, v5, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    iput v1, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget p0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No free netIds"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class public final Lcom/android/server/am/UserController$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$1;->this$0:Lcom/android/server/am/UserController;

    return-void
.end method


# virtual methods
.method public final onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/UserController$1;->this$0:Lcom/android/server/am/UserController;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

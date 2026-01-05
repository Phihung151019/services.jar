.class public final Lcom/android/server/am/ActivityManagerShellCommand$3;
.super Landroid/app/UserSwitchObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$switchLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$userId:I

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$switchLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$userId:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$switchLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
